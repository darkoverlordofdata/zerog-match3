using Sdx.Ui;
using Sdx.Math;
using Sdx.Graphics;


/** 
 * A Space on the Board
 */
public class Space : Object
{
    public Point2 pos;
    public Piece piece;

}

public class Board : Object 
{
    const Point2 dirUp = { 0, -1 };
    const Point2 dirDown = { 0, 1 };
    const Point2 dirLeft = { -1, 0 };
    const Point2 dirRight = { 1, 0 };
    public struct SwapData
    {
        Space a;
        Space b;
        
    }
    public Space selected;
    //  public Tween current;
    public Space[,] field;
    public Point2 size;
    public int width;
    public int height;
    public int top;
    public int left;

    public Board(int width, int height)
    {
        this.width = width;
        this.height = height;

        Sdx.SetTweenManager(new Sdx.Math.TweenManager());
        Tween.RegisterAccessor(Class.Get("Sdx.Graphics.Sprite"), new SpriteTween());
        Sdx.AddInputProcessor(new Sdx.InputProcessor().SetTouchDown(Touched));
    }

    public bool Touched(int x, int y, int pointer, int button)
    {
        if (x < 0 || y < 0) return false;
        if (x > width*PieceSize.x || y > height*PieceSize.y) return false;

        x = x - top + (int)PieceSize.x/2;
        y = y - left + (int)PieceSize.y/2;
        
        Point2 spacePos = { };
        spacePos.x = (int)(x / PieceSize.x);
        spacePos.y = (int)(y / PieceSize.y);
        var sp = GetSpace(spacePos);
        if (sp != null)
        {
            print("touch %d %d -- %d %d\n", x, y, spacePos.x, spacePos.y);
            if (selected != null)
            {
                selected.piece.Unselect();
                if (sp != null)
                {
                    SDL.Video.Point dir = { selected.pos.x - sp.pos.x, selected.pos.x - sp.pos.x };

                    if (dir.x == 0 && Math.fabs(dir.y) == 1 ||
                            dir.y == 0 && Math.fabs(dir.x) == 1)
                    {

                        //  Tween
                        //  .To(sp.piece.view, SpriteMovement.Type, 0)
                        //  .Target({ 100, 100 })
                        //  .Start();


                        //  var tmp = selected.piece.tween;
                        //  selected.piece.tween = sp.piece.tween;
                        //  sp.piece.tween = tmp;
                        //  //  spTween tween = swap(selected, sp);
                        //  tween->setDoneCallback(CLOSURE(this, &Board::swapped));
                    }
                    
                }
                selected = null;
            }
            else
            {
                selected = sp;
                if (sp != null)
                    sp.piece.Select();

            }
        }
        return false;
    }
    
    //  public Vector2 GetPos(SDL.Video.Point* p)
    public Vector2 GetPos(Point2* p)
    {
        Vector2 pos = { p.x * PieceSize.x, p.y * PieceSize.y };
        return pos.Add(PieceSize.Div(2));
    }

    public void Init(int w, int h)
    {
        size = { w, h };

        field = new Space[size.x, size.y];

        for (var y = 0; y < size.y; ++y)
        {
            for (var x = 0; x < size.x; ++x)
            {
                field[x, y] = new Space();
                field[x, y].pos = { x, y };
            }
        }

        top = (width-(w*100)+100)/2;
        left = (height-(h*100)+100)/2;

    }

    //  public Space GetSpace(SDL.Video.Point pos, bool check = true)
    public Space GetSpace(Point2 pos, bool check = true)
    {
        if (pos.x < 0 || pos.x >= size.x)
            return null;
        if (pos.y < 0 || pos.y >= size.y)
            return null;

        var sp = field[pos.x, pos.y];
        if (check)
        {
            if (sp.piece == null)
                return null;
            if (sp.piece.IsExploding())
                return null;
            if (sp.piece.IsSwaping())
                return null;
            if (sp.piece.IsDead())
                return null;
            if (sp.piece.IsFalling())
                return null;
        }
        return  sp;
    }

    /**
     * Update the board logic and positions
     */
    public void Update()
    {
        /* Search for matching pieces and explode */
        for (var y = 0; y < size.y; ++y)
        {
            for (var x = 0; x < size.x; ++x)
            {
            }
        }
        
        /* Remove dead pieces */
        for (var y = 0; y < size.y; ++y)
        {
            for (var x = 0; x < size.x; ++x)
            {
                if (field[x, y].piece != null && field[x, y].piece.IsDead())
                    field[x, y].piece = null;
            }
        }

        /* Fill in the empty slots */
        for (var y = 0; y < size.y; ++y)
        {
            for (var x = 0; x < size.x; ++x)
            {
                if (field[x, y].piece == null)
                {
                    field[x, y].piece = new Piece();
                    field[x, y].piece.view.SetPosition(top+x*100, 0);
                    Tween
                        //  .To(field[x, y].piece.view, Movement.Type, 1f)
                        .To(field[x, y].piece.view, SpriteTween.POS_XY, 1f)
                        .Target({ top+100*x, left+100*y })
                        .Ease(Interpolation.sine)
                        .Start(Sdx.tweenManager);           
                    
                }
            }
        }
    }

    /**
     * Draw the board
     */
    public void Draw()
    {
        for (var y = 0; y < size.y; ++y)
        {
            for (var x = 0; x < size.x; ++x)
            {
                if (field[x, y].piece != null)
                {
                    field[x, y].piece.Draw();
                }
            }
        }
    }


}

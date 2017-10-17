using Sdx.Math;
using Sdx.Graphics;

const Vector2 PieceSize = { 100, 100 };

const string[] PieceName = {
    "air", "coin", "earth", "fire", "skull", "water"
};

public class Piece : Object {

    public bool exploding = false;
    public bool swaping = false;
    public bool dead = false;
    public bool falling = false;
    public bool select = false;
    public Sdx.Graphics.Sprite view;
    public int type;
    public Interpolation tween = Interpolation.bounceOut; 
    public float elapsed;
    public int dir = 1;

    public bool IsExploding() { return exploding; }
    public bool IsSwaping() { return swaping; }
    public bool IsDead() { return dead; }
    public bool IsFalling() { return falling; }
    
    public Piece() 
    {
        type = (int)(Sdx.GetRandom() * 6);
        view = Sdx.atlas.CreateSprite(PieceName[type]);


        //  var p1 = &Sprite.ClsId;
        //  var p = (uint32)p1;
        //  Guid* q1 = view.clsId;
        //  var q = (uint32)q1;
        //  print("%s - %08x - %08x -- %s\n", Sprite.ClsId.ToString(), p, q, view.path);
        //  print("%s -- %s\n", p1->ToString(), q1->ToString());
    }

    public void Draw()
    {
        view.Render(view.x, view.y);
    }

    public void Select()
    {
        select = true;
        Tween
            //  .To(view, Rotate.Type, 0.25f)
            .To(view, SpriteTween.ANGLE, 0.25f)
            .Target({ 45 })
            .Ease(Interpolation.sine)
            .RepeatYoyo(Tween.INFINITY)
            .Start(Sdx.tweenManager);

    }
    public void Unselect()
    {
        select = false;
    }
}

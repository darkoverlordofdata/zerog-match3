using Sdx.Math;
using Sdx.Graphics;

public class SpriteTween : TweenAccessor
{
    public const int POS_XY = 0;
    public const int ANGLE = 1;

    public SpriteTween()
    {
        GetValues = (target, tweenType, ref returnValues) =>
        {
            switch(tweenType)
            {
                case POS_XY:
                    var sprite = (Sprite)target;
                    returnValues[0] = sprite.x;
                    returnValues[1] = sprite.y;
                    return 2;

                case ANGLE:
                    var sprite = (Sprite)target;
                    returnValues[0] = (float)sprite.angle;
                    return 1;

            }
            return 0;
        };

        SetValues = (target, tweenType, ref newValues) =>
        {
            switch(tweenType)
            {
                case POS_XY:
                    var sprite = (Sprite)target;
                    sprite.x = (int)newValues[0];
                    sprite.y = (int)newValues[1];
                    return;

                case ANGLE:
                    var sprite = (Sprite)target;
                    sprite.angle = newValues[0];
                    return;

            }
        };

    }
}


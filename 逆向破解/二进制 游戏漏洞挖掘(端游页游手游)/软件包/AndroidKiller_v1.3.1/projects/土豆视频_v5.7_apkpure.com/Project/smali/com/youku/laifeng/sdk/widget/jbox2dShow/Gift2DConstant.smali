.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DConstant;
.super Ljava/lang/Object;
.source "Gift2DConstant.java"


# static fields
.field public static final GIFT_CRASH_REDUCEBORDER:I = 0x5

.field public static final GIFT_LENGTH:I = 0x14

.field public static MAX_GIFTCOUNT:F = 0.0f

.field public static final MIN_SHOWTIME:F = 24.0f

.field public static final OVERMAX_REMOVECOUNT:F = 3.0f

.field public static final RATE:F = 30.0f

.field public static final iteraTions:I = 0xa

.field public static final stepTime:F = 0.1f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DConstant;->MAX_GIFTCOUNT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lalex/com/lfsdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalex/com/lfsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomFanWallBtn:[I

.field public static final CustomFanWallBtn_FanWallBtnPadding:I = 0x5

.field public static final CustomFanWallBtn_FanWallBtnText:I = 0x0

.field public static final CustomFanWallBtn_FanWallBtnTextColor:I = 0x4

.field public static final CustomFanWallBtn_FanWallBtnTextSize:I = 0x2

.field public static final CustomFanWallBtn_fanWallBtnImageSize:I = 0x3

.field public static final CustomFanWallBtn_fanWallBtnImageSrc:I = 0x1

.field public static final CustomFanWallText:[I

.field public static final CustomFanWallText_fanWallClickText:I = 0x3

.field public static final CustomFanWallText_fanWallClickTextColor:I = 0x4

.field public static final CustomFanWallText_fanWallClickTextSize:I = 0x5

.field public static final CustomFanWallText_fanWallText:I = 0x0

.field public static final CustomFanWallText_fanWallTextColor:I = 0x1

.field public static final CustomFanWallText_fanWallTextSize:I = 0x2

.field public static final NetworkImageView:[I

.field public static final NetworkImageView_borderColor:I = 0x5

.field public static final NetworkImageView_borderWidth:I = 0x4

.field public static final NetworkImageView_fade:I = 0x3

.field public static final NetworkImageView_imageBorder:I = 0x6

.field public static final NetworkImageView_imageBorderSlider:I = 0x8

.field public static final NetworkImageView_imageDefault:I = 0x1

.field public static final NetworkImageView_imageError:I = 0x0

.field public static final NetworkImageView_imageShowLast:I = 0x7

.field public static final NetworkImageView_round:I = 0x2

.field public static final drop_down_list_attr:[I

.field public static final drop_down_list_attr_isAutoLoadOnBottom:I = 0x2

.field public static final drop_down_list_attr_isDropDownStyle:I = 0x0

.field public static final drop_down_list_attr_isOnBottomStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1256
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lalex/com/lfsdk/R$styleable;->CustomFanWallBtn:[I

    .line 1263
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lalex/com/lfsdk/R$styleable;->CustomFanWallText:[I

    .line 1270
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lalex/com/lfsdk/R$styleable;->NetworkImageView:[I

    .line 1280
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lalex/com/lfsdk/R$styleable;->drop_down_list_attr:[I

    return-void

    .line 1256
    nop

    :array_0
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 1263
    :array_1
    .array-data 4
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
    .end array-data

    .line 1270
    :array_2
    .array-data 4
        0x7f010079
        0x7f01007a
        0x7f01007b
        0x7f01007c
        0x7f01007d
        0x7f01007e
        0x7f01007f
        0x7f010080
        0x7f010081
    .end array-data

    .line 1280
    :array_3
    .array-data 4
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

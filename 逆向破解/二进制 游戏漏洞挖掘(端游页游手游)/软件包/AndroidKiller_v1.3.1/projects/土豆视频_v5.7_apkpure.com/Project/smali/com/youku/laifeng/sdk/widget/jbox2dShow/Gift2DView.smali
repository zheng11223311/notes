.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;
.super Landroid/view/SurfaceView;
.source "Gift2DView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;
    }
.end annotation


# static fields
.field static final FPS:I = 0x1e

.field private static TAG:Ljava/lang/String;

.field public static final lock1:Ljava/lang/Object;


# instance fields
.field private final MSG_ANIM_DESTORY:I

.field private ceiling:Lorg/jbox2d/dynamics/Body;

.field private ground:Lorg/jbox2d/dynamics/Body;

.field private isCreated:Z

.field private isDestoryed:Z

.field isLeft:Z

.field private leftwall:Lorg/jbox2d/dynamics/Body;

.field private mGift:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/jbox2d/dynamics/Body;",
            "Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGiftarray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/dynamics/Body;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPortrait:Z

.field myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

.field private paint:Landroid/graphics/Paint;

.field private rightwall:Lorg/jbox2d/dynamics/Body;

.field private sel:Landroid/hardware/SensorEventListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sm:Landroid/hardware/SensorManager;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private world:Lorg/jbox2d/dynamics/World;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Gift2DView"

    sput-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->lock1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, -0x3d380000    # -100.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->MSG_ANIM_DESTORY:I

    .line 41
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isLeft:Z

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    .line 56
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mIsPortrait:Z

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGiftarray:Ljava/util/ArrayList;

    .line 66
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isDestoryed:Z

    .line 67
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isCreated:Z

    .line 80
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getCpuLevel()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    sput v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DConstant;->MAX_GIFTCOUNT:F

    .line 82
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 83
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->setZOrderMediaOverlay(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->paint:Landroid/graphics/Paint;

    .line 93
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->setFocusable(Z)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->setFocusableInTouchMode(Z)V

    .line 99
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 100
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2, v6, v6}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v2, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 101
    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2, v7, v7}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v2, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 102
    new-instance v1, Lorg/jbox2d/common/Vec2;

    const/4 v2, 0x0

    const v3, 0x416b3334    # 14.700001f

    invoke-direct {v1, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 103
    .local v1, "gravity":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/dynamics/World;

    invoke-direct {v2, v0, v1, v5}, Lorg/jbox2d/dynamics/World;-><init>(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;Z)V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    .line 106
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sm:Landroid/hardware/SensorManager;

    .line 107
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sensor:Landroid/hardware/Sensor;

    .line 109
    new-instance v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;

    invoke-direct {v2, p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sel:Landroid/hardware/SensorEventListener;

    .line 122
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sm:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sel:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 123
    return-void
.end method

.method private AnimationDestory(Lorg/jbox2d/dynamics/Body;)V
    .locals 1
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGiftarray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->animateDispire(Lorg/jbox2d/dynamics/Body;)V

    .line 398
    return-void
.end method

.method private CreateGift(ZLandroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "left"    # Z
    .param p2, "bmpStone"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isCreated:Z

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->close()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    .line 255
    :cond_1
    new-instance v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    .line 256
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    const-string v2, "Gift2DView logic thread"

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->setName(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->flag:Z

    .line 258
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->start()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DConstant;->MAX_GIFTCOUNT:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 262
    const/4 v9, 0x0

    .line 264
    .local v9, "index":I
    :goto_1
    int-to-float v0, v9

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGiftarray:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jbox2d/dynamics/Body;

    .line 266
    .local v7, "body":Lorg/jbox2d/dynamics/Body;
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    invoke-direct {p0, v7}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->DestoryGift(Lorg/jbox2d/dynamics/Body;)V

    .line 264
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 272
    .end local v7    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v9    # "index":I
    :cond_4
    const/4 v1, 0x0

    .line 273
    .local v1, "xPos":F
    if-nez p1, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createGift(Lorg/jbox2d/dynamics/World;FFFFZLandroid/graphics/Bitmap;)Lorg/jbox2d/dynamics/Body;

    move-result-object v8

    .line 277
    .local v8, "gift":Lorg/jbox2d/dynamics/Body;
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    new-instance v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;-><init>(Lorg/jbox2d/dynamics/Body;F)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGiftarray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private DestoryGift(Lorg/jbox2d/dynamics/Body;)V
    .locals 0
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->AnimationDestory(Lorg/jbox2d/dynamics/Body;)V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mIsPortrait:Z

    return v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Lorg/jbox2d/dynamics/World;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->logic(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isDestoryed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->dodraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private dodraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/World;->getBodyList()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 176
    .local v1, "body":Lorg/jbox2d/dynamics/Body;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/World;->getBodyCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 181
    iget-object v4, v1, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    instance-of v4, v4, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, v1, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    check-cast v4, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    move-object v0, v4

    check-cast v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    move-object v3, v0

    .line 183
    .local v3, "title":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->drawStone(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 185
    .end local v3    # "title":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;
    :cond_0
    iget-object v1, v1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v2    # "i":I
    :catch_0
    move-exception v4

    .line 191
    :cond_1
    return-void
.end method

.method private logic(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 199
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    const/16 v6, 0xa

    invoke-virtual {v5, v9, v6}, Lorg/jbox2d/dynamics/World;->step(FI)V

    .line 201
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/World;->getBodyList()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 203
    .local v0, "body":Lorg/jbox2d/dynamics/Body;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/World;->getBodyCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 205
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    instance-of v5, v5, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    check-cast v5, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;

    move-object v3, v5

    check-cast v3, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;

    .line 207
    .local v3, "rect":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v5, v8

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->getW()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->setX(F)V

    .line 208
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v8

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->getH()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->setY(F)V

    .line 218
    .end local v3    # "rect":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;

    .line 221
    .local v2, "info":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;
    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 223
    if-eqz v2, :cond_2

    .line 224
    iget v5, v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mTime:F

    const/high16 v6, 0x42400000    # 48.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 225
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mBody:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mBody:Lorg/jbox2d/dynamics/Body;

    invoke-direct {p0, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->DestoryGift(Lorg/jbox2d/dynamics/Body;)V

    .line 229
    :cond_1
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mGift:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    iput-boolean v10, v5, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->flag:Z

    .line 231
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v10, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "info":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;
    :cond_3
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    instance-of v5, v5, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    if-eqz v5, :cond_0

    .line 212
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    check-cast v5, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    move-object v4, v5

    check-cast v4, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    .line 213
    .local v4, "tile":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->getW()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->setX(F)V

    .line 214
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->getH()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->setY(F)V

    goto :goto_1

    .line 235
    .end local v4    # "tile":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;
    .restart local v2    # "info":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;
    :cond_4
    iget v5, v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mTime:F

    add-float/2addr v5, v9

    iput v5, v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mTime:F

    goto :goto_2

    .line 241
    .end local v2    # "info":Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;
    :cond_5
    return-void
.end method


# virtual methods
.method public AddGift(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    iget-boolean v10, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isLeft:Z

    if-nez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isLeft:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 143
    .local v8, "start_time1":J
    sget-object v11, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->lock1:Ljava/lang/Object;

    monitor-enter v11

    .line 144
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 145
    .local v6, "start_time":J
    iget-boolean v10, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isLeft:Z

    invoke-direct {p0, v10, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->CreateGift(ZLandroid/graphics/Bitmap;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "end_time":J
    sub-long v12, v0, v6

    .line 150
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    .local v2, "end_time1":J
    sub-long v4, v2, v8

    .line 162
    .local v4, "spend_time1":J
    return-void

    .line 141
    .end local v0    # "end_time":J
    .end local v2    # "end_time1":J
    .end local v4    # "spend_time1":J
    .end local v6    # "start_time":J
    .end local v8    # "start_time1":J
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 150
    .restart local v8    # "start_time1":J
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method public animateDispire(Lorg/jbox2d/dynamics/Body;)V
    .locals 1
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v0, p1}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 407
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->flag:Z

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isDestoryed:Z

    .line 133
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    .line 137
    return-void
.end method

.method public setPortrait(Z)V
    .locals 0
    .param p1, "isPortrait"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->mIsPortrait:Z

    .line 127
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 303
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    const/4 v1, 0x0

    const/high16 v2, -0x3e700000    # -18.0f

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 307
    .local v7, "body":Lorg/jbox2d/dynamics/Body;
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ceiling:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 308
    iput-object v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ceiling:Lorg/jbox2d/dynamics/Body;

    .line 310
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3ee66666    # 0.45f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 311
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ground:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 312
    iput-object v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ground:Lorg/jbox2d/dynamics/Body;

    .line 314
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 315
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->leftwall:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 316
    iput-object v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->leftwall:Lorg/jbox2d/dynamics/Body;

    .line 318
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 319
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->rightwall:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 320
    iput-object v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->rightwall:Lorg/jbox2d/dynamics/Body;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v7    # "body":Lorg/jbox2d/dynamics/Body;
    :cond_1
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v8

    .line 323
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 12
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const v5, 0x3ee66666    # 0.45f

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isCreated:Z

    .line 292
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    const/high16 v2, -0x3e700000    # -18.0f

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ceiling:Lorg/jbox2d/dynamics/Body;

    .line 294
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->ground:Lorg/jbox2d/dynamics/Body;

    .line 296
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    move v6, v1

    move v7, v1

    move v8, v4

    move v11, v1

    invoke-static/range {v5 .. v11}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->leftwall:Lorg/jbox2d/dynamics/Body;

    .line 298
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    move v7, v1

    move v8, v4

    move v11, v1

    invoke-static/range {v5 .. v11}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;->createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->rightwall:Lorg/jbox2d/dynamics/Body;

    .line 299
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->myThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;

    iput-boolean v1, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->flag:Z

    .line 331
    :cond_0
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->isCreated:Z

    .line 332
    return-void
.end method

.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
.super Ljava/lang/Object;
.source "GiftLogicFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;,
        Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;


# instance fields
.field private STAR_FPS:I

.field private gift2dview:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

.field private lastSendStar:J

.field private lockStar:Ljava/lang/Object;

.field public starQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->lockStar:Ljava/lang/Object;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->lastSendStar:J

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->STAR_FPS:I

    .line 29
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->gift2dview:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starQueue:Ljava/util/Queue;

    .line 31
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->lockStar:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->lastSendStar:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;J)J
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->lastSendStar:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->STAR_FPS:I

    return v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->gift2dview:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    return-object v0
.end method

.method private calculateCount(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 188
    move v0, p1

    .line 189
    .local v0, "rescount":I
    return v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 152
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 153
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 155
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    return-object v0

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getInstance()Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->instance:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 177
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 178
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 180
    .local v9, "scaleWidth":F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 181
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 184
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 164
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 165
    .local v4, "height":I
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "oldbmp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 168
    .local v9, "scaleWidth":F
    int-to-float v2, p3

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 169
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 170
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 172
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public setGift2dview(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .locals 0
    .param p1, "gift2dview"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->gift2dview:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .line 54
    return-object p0
.end method

.method public showStarGift(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;Z)V
    .locals 3
    .param p1, "starm"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;
    .param p2, "isSelf"    # Z

    .prologue
    .line 88
    const-string v1, "q"

    invoke-virtual {p1, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, "count":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;IZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method public startStarLogic()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    .line 102
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->start()V

    .line 103
    return-void
.end method

.method public stopStarLogic()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starThread:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->flag:Z

    .line 109
    :cond_0
    return-void
.end method

.class public Lcom/youku/widget/DanmuSurfaceView;
.super Landroid/view/SurfaceView;
.source "DanmuSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/DanmuSurfaceView$DanmuBody;,
        Lcom/youku/widget/DanmuSurfaceView$DanmuPara;,
        Lcom/youku/widget/DanmuSurfaceView$DrawThread;
    }
.end annotation


# static fields
.field private static final DANMU_ADD:I = 0x0

.field private static final DANMU_DEC:I = 0x1

.field private static final DANMU_NORMAL:I = 0x2

.field private static final mDanmuTextSize:I = 0x32


# instance fields
.field private hasMeasured:Z

.field private mArrayPositionY:[I

.field private mDanmuPara:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/widget/DanmuSurfaceView$DanmuPara;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGetDataSet:Z

.field private mRunFlag:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceLeft:I

.field private mSurfaceRight:I

.field private mView:Lcom/youku/widget/DanmuSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mRunFlag:Z

    .line 27
    iput v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceLeft:I

    .line 28
    const/16 v0, 0x2d8

    iput v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    .line 33
    iput-boolean v1, p0, Lcom/youku/widget/DanmuSurfaceView;->hasMeasured:Z

    .line 35
    iput-boolean v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mIsGetDataSet:Z

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mArrayPositionY:[I

    .line 49
    iput-object p0, p0, Lcom/youku/widget/DanmuSurfaceView;->mView:Lcom/youku/widget/DanmuSurfaceView;

    .line 50
    invoke-virtual {p0, v2}, Lcom/youku/widget/DanmuSurfaceView;->setZOrderOnTop(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/youku/widget/DanmuSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 52
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 54
    return-void

    .line 36
    :array_0
    .array-data 4
        0x46
        0x8c
        0xd2
        0x118
        0x15e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mRunFlag:Z

    .line 27
    iput v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceLeft:I

    .line 28
    const/16 v0, 0x2d8

    iput v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    .line 33
    iput-boolean v1, p0, Lcom/youku/widget/DanmuSurfaceView;->hasMeasured:Z

    .line 35
    iput-boolean v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mIsGetDataSet:Z

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mArrayPositionY:[I

    .line 40
    iput-object p0, p0, Lcom/youku/widget/DanmuSurfaceView;->mView:Lcom/youku/widget/DanmuSurfaceView;

    .line 41
    invoke-virtual {p0, v2}, Lcom/youku/widget/DanmuSurfaceView;->setZOrderOnTop(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/youku/widget/DanmuSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 43
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 45
    return-void

    .line 36
    :array_0
    .array-data 4
        0x46
        0x8c
        0xd2
        0x118
        0x15e
    .end array-data
.end method

.method static synthetic access$000(Lcom/youku/widget/DanmuSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView;->hasMeasured:Z

    return v0
.end method

.method static synthetic access$002(Lcom/youku/widget/DanmuSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/youku/widget/DanmuSurfaceView;->hasMeasured:Z

    return p1
.end method

.method static synthetic access$102(Lcom/youku/widget/DanmuSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceLeft:I

    return p1
.end method

.method static synthetic access$200(Lcom/youku/widget/DanmuSurfaceView;)Lcom/youku/widget/DanmuSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mView:Lcom/youku/widget/DanmuSurfaceView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/widget/DanmuSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    return p1
.end method

.method static synthetic access$400(Lcom/youku/widget/DanmuSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mRunFlag:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youku/widget/DanmuSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/DanmuSurfaceView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mIsGetDataSet:Z

    return v0
.end method

.method private addDanmuBody(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "index"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    add-int/lit8 v0, p2, 0x5

    iget-object v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v0, v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    new-instance v1, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mArrayPositionY:[I

    aget v3, v3, p1

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;-><init>(Lcom/youku/widget/DanmuSurfaceView;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v0, v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    new-instance v1, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mArrayPositionY:[I

    aget v3, v3, p1

    add-int/lit8 v4, p2, 0x5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;-><init>(Lcom/youku/widget/DanmuSurfaceView;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private decDanmuBody(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v0, v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v0, v0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    :cond_0
    return-void
.end method

.method private getDanmuData(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "color":I
    const/4 v2, 0x0

    .line 183
    .local v2, "speed":I
    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 191
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 192
    .local v1, "r":Ljava/util/Random;
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x5

    .line 193
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 219
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iput v0, v3, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mColor:I

    .line 223
    iget-object v3, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iput v2, v3, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mSpeed:I

    goto :goto_0

    .line 195
    :pswitch_0
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 196
    goto :goto_1

    .line 198
    :pswitch_1
    invoke-static {v4, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 199
    goto :goto_1

    .line 201
    :pswitch_2
    const/16 v3, 0x99

    invoke-static {v4, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 202
    goto :goto_1

    .line 204
    :pswitch_3
    const/16 v3, 0xf1

    invoke-static {v4, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 205
    goto :goto_1

    .line 207
    :pswitch_4
    const/16 v3, 0x12

    invoke-static {v5, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 208
    goto :goto_1

    .line 210
    :pswitch_5
    const/16 v3, 0xfc

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 211
    goto :goto_1

    .line 213
    :pswitch_6
    const/16 v3, 0x8c

    const/16 v4, 0xee

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 214
    goto :goto_1

    .line 216
    :pswitch_7
    const/16 v3, 0x86

    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 217
    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getOption(IILandroid/graphics/Paint;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 227
    const-string v1, ""

    .line 229
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 250
    :goto_0
    return v2

    .line 233
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 234
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mIndex:I

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 236
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v1, v4, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 237
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v2, v5

    if-gez v2, :cond_1

    .line 238
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v6, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mIndex:I

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 244
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v1, v4, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v5, v2, 0x32

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v6, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    if-ge v2, v5, :cond_2

    move v2, v4

    .line 246
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 250
    goto/16 :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 58
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    new-instance v3, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;-><init>(Lcom/youku/widget/DanmuSurfaceView;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v2, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    new-instance v3, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v4, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceRight:I

    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mArrayPositionY:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;-><init>(Lcom/youku/widget/DanmuSurfaceView;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    invoke-direct {p0, v0}, Lcom/youku/widget/DanmuSurfaceView;->getDanmuData(I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mHasDanmuBody:Z

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :catch_0
    move-exception v2

    .line 82
    :goto_2
    return-void

    .line 68
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/youku/widget/DanmuSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 70
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/youku/widget/DanmuSurfaceView$1;

    invoke-direct {v2, p0}, Lcom/youku/widget/DanmuSurfaceView$1;-><init>(Lcom/youku/widget/DanmuSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public drawDanmu()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v7, -0x1000000

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x0

    .line 127
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v5, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 131
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 134
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 136
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-boolean v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mHasDanmuBody:Z

    if-nez v5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iput-boolean v11, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mIsAdding:Z

    .line 141
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 142
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .local v3, "paint":Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 147
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-gt v5, v7, :cond_5

    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v3, v10, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 150
    iget-object v6, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mIndex:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v6, v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v6, v6, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    int-to-float v8, v6

    iget-object v6, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v6, v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v6, v6, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionY:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v8, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v8, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    iget-object v6, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget v6, v6, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mSpeed:I

    sub-int v6, v8, v6

    iput v6, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    .line 152
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    invoke-direct {p0, v1, v5, v3}, Lcom/youku/widget/DanmuSurfaceView;->getOption(IILandroid/graphics/Paint;)I

    move-result v4

    .line 153
    .local v4, "result":I
    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-boolean v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mIsAdding:Z

    if-nez v5, :cond_3

    .line 154
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v6, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iget-object v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;

    iget v5, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mIndex:I

    invoke-direct {p0, v1, v5}, Lcom/youku/widget/DanmuSurfaceView;->addDanmuBody(II)V

    .line 155
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mDanmuPara:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;

    iput-boolean v12, v5, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mIsAdding:Z

    .line 157
    :cond_3
    if-ne v12, v4, :cond_4

    .line 158
    invoke-direct {p0, v1}, Lcom/youku/widget/DanmuSurfaceView;->decDanmuBody(I)V

    .line 141
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .end local v4    # "result":I
    :cond_5
    move v5, v7

    .line 147
    goto/16 :goto_3

    .line 135
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 162
    .end local v2    # "j":I
    :cond_7
    iget-object v5, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public setDataSet(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/widget/DanmuSurfaceView;->mDataSet:Ljava/util/ArrayList;

    .line 175
    invoke-direct {p0}, Lcom/youku/widget/DanmuSurfaceView;->init()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mIsGetDataSet:Z

    .line 177
    return-void
.end method

.method public startDanmu()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public stopDanmu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iput-boolean v2, p0, Lcom/youku/widget/DanmuSurfaceView;->mRunFlag:Z

    .line 167
    iget-object v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 168
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    iget-object v1, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 171
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 93
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/widget/DanmuSurfaceView$DrawThread;

    invoke-direct {v1, p0}, Lcom/youku/widget/DanmuSurfaceView$DrawThread;-><init>(Lcom/youku/widget/DanmuSurfaceView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 98
    return-void
.end method

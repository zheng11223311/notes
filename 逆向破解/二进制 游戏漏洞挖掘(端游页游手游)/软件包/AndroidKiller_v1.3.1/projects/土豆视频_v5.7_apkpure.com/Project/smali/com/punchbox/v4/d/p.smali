.class public Lcom/punchbox/v4/d/p;
.super Landroid/widget/TextView;


# instance fields
.field a:Landroid/graphics/drawable/shapes/Shape;

.field private b:Lcom/punchbox/v4/d/u;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xa

    const/4 v1, 0x7

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/punchbox/v4/d/p;->b:Lcom/punchbox/v4/d/u;

    const-string/jumbo v0, "\u79d2"

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->c:Ljava/lang/String;

    const/16 v0, 0xf

    iput v0, p0, Lcom/punchbox/v4/d/p;->d:I

    iput-object v3, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->f:Landroid/os/Handler;

    const/16 v0, 0x78

    iput v0, p0, Lcom/punchbox/v4/d/p;->g:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/punchbox/v4/d/p;->h:I

    new-instance v0, Lcom/punchbox/v4/d/s;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/s;-><init>(Lcom/punchbox/v4/d/p;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/punchbox/v4/d/t;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/t;-><init>(Lcom/punchbox/v4/d/p;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->a:Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {p0}, Lcom/punchbox/v4/d/p;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/p;->setTextColor(I)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/p;->setTextSize(F)V

    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/punchbox/v4/d/p;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/p;->setGravity(I)V

    invoke-virtual {p0}, Lcom/punchbox/v4/d/p;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/punchbox/v4/d/q;

    invoke-direct {v1, p0}, Lcom/punchbox/v4/d/q;-><init>(Lcom/punchbox/v4/d/p;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/d/p;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/p;->h:I

    return p1
.end method

.method static synthetic a(Lcom/punchbox/v4/d/p;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/punchbox/v4/d/p;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/p;->g:I

    return p1
.end method

.method static synthetic b(Lcom/punchbox/v4/d/p;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/punchbox/v4/d/p;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/p;->d:I

    return v0
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/punchbox/v4/d/p;->a:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    return-object v0
.end method

.method static synthetic d(Lcom/punchbox/v4/d/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/punchbox/v4/d/p;)I
    .locals 2

    iget v0, p0, Lcom/punchbox/v4/d/p;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/punchbox/v4/d/p;->d:I

    return v0
.end method

.method static synthetic f(Lcom/punchbox/v4/d/p;)Lcom/punchbox/v4/d/u;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->b:Lcom/punchbox/v4/d/u;

    return-object v0
.end method

.method static synthetic g(Lcom/punchbox/v4/d/p;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/p;->g:I

    return v0
.end method

.method static synthetic h(Lcom/punchbox/v4/d/p;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/p;->h:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    new-instance v1, Lcom/punchbox/v4/d/r;

    invoke-direct {v1, p0}, Lcom/punchbox/v4/d/r;-><init>(Lcom/punchbox/v4/d/p;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/punchbox/v4/d/p;->e:Ljava/util/Timer;

    iput-object v2, p0, Lcom/punchbox/v4/d/p;->b:Lcom/punchbox/v4/d/u;

    iget-object v0, p0, Lcom/punchbox/v4/d/p;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/v4/d/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/punchbox/v4/d/p;->f:Landroid/os/Handler;

    return-void
.end method

.method public setOnTimeoutListener(Lcom/punchbox/v4/d/u;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/p;->b:Lcom/punchbox/v4/d/u;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/p;->d:I

    return-void
.end method

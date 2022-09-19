.class public Lcom/punchbox/v4/d/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static C:I

.field private static D:I

.field private static final d:Ljava/lang/String;

.field private static s:I

.field private static t:I


# instance fields
.field private A:I

.field private B:I

.field private E:Lcom/punchbox/util/d;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Lcom/punchbox/v4/d/h;

.field a:Landroid/view/View$OnKeyListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/graphics/drawable/shapes/Shape;

.field private e:Landroid/app/Activity;

.field private f:Landroid/os/Handler;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/punchbox/engine/PreDownloadData;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/util/DisplayMetrics;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private u:Lcom/punchbox/v4/d/y;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Lcom/punchbox/v4/d/p;

.field private z:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    const/16 v0, 0x258

    sput v0, Lcom/punchbox/v4/d/a;->s:I

    const/16 v0, 0x384

    sput v0, Lcom/punchbox/v4/d/a;->t:I

    const/16 v0, 0x280

    sput v0, Lcom/punchbox/v4/d/a;->C:I

    const/16 v0, 0x64

    sput v0, Lcom/punchbox/v4/d/a;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/os/Handler;)V
    .locals 6

    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->l:Lcom/punchbox/engine/PreDownloadData;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->m:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->n:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->o:Ljava/lang/String;

    iput v4, p0, Lcom/punchbox/v4/d/a;->p:I

    iput v2, p0, Lcom/punchbox/v4/d/a;->q:I

    iput v2, p0, Lcom/punchbox/v4/d/a;->r:I

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x280

    iput v0, p0, Lcom/punchbox/v4/d/a;->A:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/punchbox/v4/d/a;->B:I

    iput-object v1, p0, Lcom/punchbox/v4/d/a;->E:Lcom/punchbox/util/d;

    iput v4, p0, Lcom/punchbox/v4/d/a;->F:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/punchbox/v4/d/a;->G:I

    iput v2, p0, Lcom/punchbox/v4/d/a;->H:I

    iput v5, p0, Lcom/punchbox/v4/d/a;->I:I

    iput v5, p0, Lcom/punchbox/v4/d/a;->J:I

    new-instance v0, Lcom/punchbox/v4/d/h;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/h;-><init>(Lcom/punchbox/v4/d/a;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->K:Lcom/punchbox/v4/d/h;

    new-instance v0, Lcom/punchbox/v4/d/e;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/e;-><init>(Lcom/punchbox/v4/d/a;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->a:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/punchbox/v4/d/f;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/f;-><init>(Lcom/punchbox/v4/d/a;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/punchbox/v4/d/g;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/g;-><init>(Lcom/punchbox/v4/d/a;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->c:Landroid/graphics/drawable/shapes/Shape;

    iput-object p1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    iput p2, p0, Lcom/punchbox/v4/d/a;->p:I

    iput-object p3, p0, Lcom/punchbox/v4/d/a;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/punchbox/util/d;->a(Landroid/content/Context;)Lcom/punchbox/util/d;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->E:Lcom/punchbox/util/d;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/punchbox/v4/d/a;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/d/a;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    return v0
.end method

.method static synthetic a(Lcom/punchbox/v4/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->J:I

    return p1
.end method

.method static synthetic a(Lcom/punchbox/v4/d/a;Lcom/punchbox/v4/d/p;)Lcom/punchbox/v4/d/p;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    return-object p1
.end method

.method private a(II)V
    .locals 6

    iput p1, p0, Lcom/punchbox/v4/d/a;->A:I

    iput p2, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/punchbox/v4/d/a;->A:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/punchbox/v4/d/a;->A:I

    mul-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    int-to-double v2, v0

    iget v1, p0, Lcom/punchbox/v4/d/a;->A:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget v1, p0, Lcom/punchbox/v4/d/a;->B:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/punchbox/v4/d/a;->B:I

    iput v0, p0, Lcom/punchbox/v4/d/a;->A:I

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;D)V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->K:Lcom/punchbox/v4/d/h;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/h;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->K:Lcom/punchbox/v4/d/h;

    invoke-virtual {v0, p2, p3}, Lcom/punchbox/v4/d/h;->a(D)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->K:Lcom/punchbox/v4/d/h;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    new-instance v0, Lcom/punchbox/v4/d/p;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/punchbox/v4/d/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    iget v1, p0, Lcom/punchbox/v4/d/a;->G:I

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/p;->setTime(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    new-instance v1, Lcom/punchbox/v4/d/d;

    invoke-direct {v1, p0}, Lcom/punchbox/v4/d/d;-><init>(Lcom/punchbox/v4/d/a;)V

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/p;->setOnTimeoutListener(Lcom/punchbox/v4/d/u;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v2}, Lcom/punchbox/v4/d/y;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/p;->a()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/v4/d/a;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/punchbox/v4/d/a;->b(Z)Z

    move-result v0

    return v0
.end method

.method private a(IIF)[I
    .locals 6

    iget v0, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v1, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/punchbox/v4/d/a;->t:I

    iget v0, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v1, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/punchbox/v4/d/a;->s:I

    if-le p1, p2, :cond_1

    sget v0, Lcom/punchbox/v4/d/a;->t:I

    int-to-double v0, v0

    sget v2, Lcom/punchbox/v4/d/a;->s:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object v0

    :cond_0
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p2, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/punchbox/v4/d/a;->t:I

    int-to-double v0, v0

    sget v2, Lcom/punchbox/v4/d/a;->s:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p2

    int-to-double v4, p1

    div-double/2addr v2, v4

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p2, v0

    goto :goto_0

    :cond_2
    int-to-double v2, p2

    div-double v0, v2, v0

    double-to-int p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/v4/d/a;IIF)[I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/v4/d/a;->a(IIF)[I

    move-result-object v0

    return-object v0
.end method

.method private b(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/punchbox/v4/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->I:I

    return p1
.end method

.method static synthetic b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/punchbox/v4/d/a;->setFocusable(Z)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_1
    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "banner"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    return v0

    :cond_2
    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "e5"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "df"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/punchbox/v4/d/a;->c(Z)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/punchbox/v4/d/a;->A:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/punchbox/v4/d/a;->B:I

    move v0, v2

    goto :goto_1
.end method

.method static synthetic c(Lcom/punchbox/v4/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->q:I

    return p1
.end method

.method static synthetic c(Lcom/punchbox/v4/d/a;)Lcom/punchbox/engine/PreDownloadData;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->l:Lcom/punchbox/engine/PreDownloadData;

    return-object v0
.end method

.method private c(Z)Ljava/io/InputStream;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->k:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->j:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/punchbox/v4/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->r:I

    return p1
.end method

.method static synthetic d(Lcom/punchbox/v4/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/y;->stopLoading()V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/y;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    goto :goto_0
.end method

.method static synthetic e(Lcom/punchbox/v4/d/a;)Lcom/punchbox/v4/d/p;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/punchbox/v4/d/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    const v1, 0x1e240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/punchbox/v4/d/c;

    invoke-direct {v1, p0}, Lcom/punchbox/v4/d/c;-><init>(Lcom/punchbox/v4/d/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->getCloseButton()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/punchbox/v4/d/a;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic g(Lcom/punchbox/v4/d/a;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/a;->q:I

    return v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->c:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    return-object v0
.end method

.method private getCloseButton()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x78

    if-gt v2, v3, :cond_1

    :try_start_0
    const-string v2, "punchbox_close_btn_l.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    const-string v2, "close button inputstream error"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xa0

    if-gt v2, v3, :cond_2

    :try_start_2
    const-string v2, "punchbox_close_btn_m.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v3, 0xf0

    if-gt v2, v3, :cond_3

    const-string v2, "punchbox_close_btn_h.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x140

    if-gt v2, v3, :cond_4

    const-string v2, "punchbox_close_btn_xh.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "punchbox_close_btn_xxh.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    const-string v2, "get close button failed."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/punchbox/v4/d/a;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/a;->r:I

    return v0
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/punchbox/v4/d/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/punchbox/v4/d/a;)Lcom/punchbox/v4/d/y;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    return-object v0
.end method

.method static synthetic k(Lcom/punchbox/v4/d/a;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/a;->I:I

    return v0
.end method

.method static synthetic l(Lcom/punchbox/v4/d/a;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/d/a;->J:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/p;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->y:Lcom/punchbox/v4/d/p;

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->e()V

    :try_start_0
    iget-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/a;->b(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get local image failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v1, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-direct {p0, v0, v1}, Lcom/punchbox/v4/d/a;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/punchbox/v4/d/b;

    invoke-direct {v1, p0}, Lcom/punchbox/v4/d/b;-><init>(Lcom/punchbox/v4/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;D)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->a()V

    iput v3, p0, Lcom/punchbox/v4/d/a;->q:I

    iput v3, p0, Lcom/punchbox/v4/d/a;->r:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v2, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    if-ne v1, v5, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/punchbox/v4/d/a;->setVisibility(I)V

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/punchbox/v4/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p0, p2, p3}, Lcom/punchbox/v4/d/a;->a(Landroid/view/ViewGroup;D)V

    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->f()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v4}, Lcom/punchbox/v4/d/a;->a(Z)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->f()V

    invoke-direct {p0, v3}, Lcom/punchbox/v4/d/a;->a(Z)V

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->a()V

    iput v3, p0, Lcom/punchbox/v4/d/a;->q:I

    iput v3, p0, Lcom/punchbox/v4/d/a;->r:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v2, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v1, p0, Lcom/punchbox/v4/d/a;->p:I

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/punchbox/v4/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/punchbox/v4/d/a;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/punchbox/v4/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/punchbox/v4/d/a;->a(Landroid/view/ViewGroup;D)V

    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->f()V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-direct {p0, v4}, Lcom/punchbox/v4/d/a;->a(Z)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/punchbox/v4/d/a;->F:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->f()V

    invoke-direct {p0, v3}, Lcom/punchbox/v4/d/a;->a(Z)V

    goto :goto_2
.end method

.method public a(Lcom/punchbox/response/b;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    const-string v1, "context has been destroyed\u3002"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    if-nez v0, :cond_1

    new-instance v0, Lcom/punchbox/v4/d/y;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->f:Landroid/os/Handler;

    iget v3, p0, Lcom/punchbox/v4/d/a;->p:I

    invoke-direct {v0, v1, v2, v3}, Lcom/punchbox/v4/d/y;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    iget v1, p0, Lcom/punchbox/v4/d/a;->H:I

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/y;->setOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    invoke-virtual {p1}, Lcom/punchbox/response/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/punchbox/v4/d/a;->a(II)V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v3, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/punchbox/v4/d/a;->A:I

    sput v0, Lcom/punchbox/v4/d/a;->C:I

    iget v0, p0, Lcom/punchbox/v4/d/a;->B:I

    sput v0, Lcom/punchbox/v4/d/a;->D:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/punchbox/response/b;->e()[Lcom/punchbox/response/c;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    aget-object v6, v0, v4

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {p1}, Lcom/punchbox/response/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/punchbox/response/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/punchbox/response/c;->b()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/punchbox/v4/d/a;->A:I

    iget v5, p0, Lcom/punchbox/v4/d/a;->B:I

    invoke-virtual/range {v0 .. v5}, Lcom/punchbox/v4/d/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/punchbox/v4/d/a;->d:Ljava/lang/String;

    const-string v1, "loadDataWithWebview"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/punchbox/response/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_4
    iget v0, p0, Lcom/punchbox/v4/d/a;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    iput v7, p0, Lcom/punchbox/v4/d/a;->A:I

    iput v7, p0, Lcom/punchbox/v4/d/a;->B:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    iget-object v2, p0, Lcom/punchbox/v4/d/a;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/y;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/a;->a()V

    iget-object v0, p0, Lcom/punchbox/v4/d/a;->u:Lcom/punchbox/v4/d/y;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/punchbox/v4/d/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->v:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public setCloseMode(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->F:I

    return-void
.end method

.method public setDisplayTime(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0xf

    :cond_0
    iput p1, p0, Lcom/punchbox/v4/d/a;->G:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/a;->H:I

    return-void
.end method

.method public setPreDownloadAd(Lcom/punchbox/engine/PreDownloadData;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/punchbox/v4/d/a;->l:Lcom/punchbox/engine/PreDownloadData;

    invoke-virtual {p1}, Lcom/punchbox/engine/PreDownloadData;->d()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v6, :cond_1

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "size"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->j:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/d/a;->k:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    if-ne v1, v3, :cond_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/a;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

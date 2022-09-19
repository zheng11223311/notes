.class public Lcn/domob/android/ads/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/e$b;,
        Lcn/domob/android/ads/a/e$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "d_banner.png"

.field private static final B:Ljava/lang/String; = "d_exit.png"

.field private static final C:Ljava/lang/String; = "d_exit_on.png"

.field private static final D:Ljava/lang/String; = "d_loading.png"

.field private static final E:Ljava/lang/String; = "d_next_off.png"

.field private static final F:Ljava/lang/String; = "d_next.png"

.field private static final G:Ljava/lang/String; = "d_next_on.png"

.field private static final H:Ljava/lang/String; = "d_out.png"

.field private static final I:Ljava/lang/String; = "d_out_on.png"

.field private static final J:Ljava/lang/String; = "d_preview_off.png"

.field private static final K:Ljava/lang/String; = "d_preview.png"

.field private static final L:Ljava/lang/String; = "d_preview_on.png"

.field private static final M:Ljava/lang/String; = "d_refresh.png"

.field private static final N:Ljava/lang/String; = "d_refresh_on.png"

.field private static final O:I = 0x23

.field private static final P:I = 0x23

.field private static final Q:I = 0x2d

.field private static final R:I = 0x1f4

.field private static final S:[Ljava/lang/String;

.field private static a:Lcn/domob/android/ads/c/f; = null

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String; = "close"

.field private static final y:Ljava/lang/String; = "inapp"

.field private static final z:Ljava/lang/String; = "url"


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:Lcn/domob/android/ads/a/e$a;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/RelativeLayout;

.field private j:F

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/animation/RotateAnimation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    .line 92
    sget-object v0, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    sput-object v0, Lcn/domob/android/ads/a/e;->w:Ljava/lang/String;

    .line 114
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".asf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".m4u"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".mpg4"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/a/e;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/e$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcn/domob/android/ads/a/e;->c:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->h:Landroid/os/Handler;

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/domob/android/ads/a/e;->j:F

    .line 89
    iput-boolean v1, p0, Lcn/domob/android/ads/a/e;->u:Z

    .line 90
    iput-boolean v1, p0, Lcn/domob/android/ads/a/e;->v:Z

    .line 118
    sget-object v0, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Initialize LandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/a/e;->j:F

    .line 121
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    .line 122
    iput-object p2, p0, Lcn/domob/android/ads/a/e;->c:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcn/domob/android/ads/a/e;->g:Lcn/domob/android/ads/a/e$a;

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->k:Landroid/view/View;

    .line 128
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 403
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    sget-object v2, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 407
    sget-object v0, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/e;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/e;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c0000    # 35.0f

    .line 414
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 415
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 423
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    return-object v0
.end method

.method private a(II)Z
    .locals 2

    .prologue
    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 253
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 254
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 255
    if-ne v1, v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/e;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/domob/android/ads/a/e;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/a/e;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/e;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/domob/android/ads/a/e;->u:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->g:Lcn/domob/android/ads/a/e$a;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcn/domob/android/ads/a/e;->S:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcn/domob/android/ads/a/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/e;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/domob/android/ads/a/e;->u:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/a/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method private e()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 215
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const-string v2, "d_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->k()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->m()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->q()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->o()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->i()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    return-object v0
.end method

.method private f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 226
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "assets/d_loading.png"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->r:Landroid/view/animation/RotateAnimation;

    .line 232
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->r:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 233
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->r:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->r:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 235
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->t()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->u()V

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 244
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(II)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 263
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->t()V

    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 271
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 274
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/e$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$7;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 366
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/e$b;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$b;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 367
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/e$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$8;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 382
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 384
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v4, 0x420c0000    # 35.0f

    .line 504
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    .line 508
    const-string v0, "d_exit.png"

    .line 509
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 511
    iget-object v2, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/e$9;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/e$9;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/e$10;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/e$10;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 532
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->j()V

    return-void
.end method

.method private j()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 536
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->t:Landroid/view/animation/Animation;

    .line 539
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 540
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 542
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->h:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/a/e$11;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$11;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    return-void
.end method

.method static synthetic j(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->s()V

    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private k()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000    # 35.0f

    .line 551
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    .line 552
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 554
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "d_preview.png"

    .line 562
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/e$12;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/e$12;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/e$13;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/e$13;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 559
    :cond_0
    const-string v0, "d_preview_off.png"

    goto :goto_0
.end method

.method static synthetic l(Lcn/domob/android/ads/a/e;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 593
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->s()V

    goto :goto_0
.end method

.method private m()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000    # 35.0f

    .line 598
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    .line 599
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 601
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    const-string v0, "d_next_off.png"

    .line 604
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$14;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$14;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$2;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    const-string v0, "d_next_off.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->l()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 634
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->s()V

    goto :goto_0
.end method

.method private o()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000    # 35.0f

    .line 639
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    .line 640
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 642
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    const-string v0, "d_out.png"

    .line 644
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$3;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$4;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 666
    const-string v0, "d_out.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->n()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 671
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 672
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 673
    return-void
.end method

.method private q()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000    # 35.0f

    .line 676
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    .line 677
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    iget-object v1, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    const-string v0, "d_refresh.png"

    .line 681
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$5;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/e$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$6;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 705
    const-string v0, "d_refresh.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->p()V

    return-void
.end method

.method static synthetic r(Lcn/domob/android/ads/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method static synthetic s(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const-string v2, "d_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const-string v2, "d_next.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    :goto_1
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const-string v2, "d_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const-string v2, "d_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 739
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 735
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic t(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->r()V

    return-void
.end method

.method static synthetic u(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/domob/android/ads/a/e;->v:Z

    if-nez v3, :cond_3

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 744
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 742
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x42340000    # 45.0f

    .line 141
    sget-object v0, Lcn/domob/android/ads/a/e;->a:Lcn/domob/android/ads/c/f;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->h()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    iget-object v3, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/e;->q:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-direct {p0}, Lcn/domob/android/ads/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    iget-object v3, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/e;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->s:Landroid/view/animation/Animation;

    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->s:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/a/e$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/e$1;-><init>(Lcn/domob/android/ads/a/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/e;->d:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->f:Landroid/app/Dialog;

    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 173
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/e;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    iget-object v3, p0, Lcn/domob/android/ads/a/e;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/e;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

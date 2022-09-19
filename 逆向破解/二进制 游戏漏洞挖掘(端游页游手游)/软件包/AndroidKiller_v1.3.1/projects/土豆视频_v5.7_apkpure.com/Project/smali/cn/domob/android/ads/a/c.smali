.class public Lcn/domob/android/ads/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/c$c;,
        Lcn/domob/android/ads/a/c$b;,
        Lcn/domob/android/ads/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "cb"

.field private static final b:Ljava/lang/String; = "cb"

.field private static final c:Ljava/lang/String; = "picture"

.field private static final d:Ljava/lang/String; = "submit"

.field private static final e:Ljava/lang/String; = "local"

.field private static final f:Ljava/lang/String; = "url"

.field private static final g:Ljava/lang/String; = "name"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:Ljava/lang/String; = "src"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static n:Lcn/domob/android/ads/c/f; = null

.field private static final p:I = 0x929

.field private static final q:I = 0x92a

.field private static r:Ljava/lang/String; = null

.field private static final s:Ljava/lang/String; = "activity_view_id"


# instance fields
.field private o:Landroid/app/Activity;

.field private t:Lcn/domob/android/ads/a/b;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private final w:I

.field private final x:I

.field private y:Landroid/os/Handler;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/a/c;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    .line 57
    iput-object v1, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->u:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcn/domob/android/ads/a/c;->w:I

    .line 61
    iput v2, p0, Lcn/domob/android/ads/a/c;->x:I

    .line 62
    iput-object v1, p0, Lcn/domob/android/ads/a/c;->y:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/app/Activity;)Lcn/domob/android/ads/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    .line 67
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcn/domob/android/ads/a/b;)Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/high16 v5, 0x42700000    # 60.0f

    .line 364
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 368
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const-string v3, "d_close.png"

    invoke-static {v2, v3}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    new-instance v2, Lcn/domob/android/ads/a/c$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/c$3;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    .line 378
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v4, v5, v2

    float-to-int v4, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 386
    return-object v0
.end method

.method private a(Landroid/app/Activity;)Lcn/domob/android/ads/a/b;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 167
    new-instance v0, Lcn/domob/android/ads/a/b;

    const-string v1, "activity_view_id"

    invoke-direct {v0, p1, v1, v2}, Lcn/domob/android/ads/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 168
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 330
    .line 331
    const-string v0, ""

    .line 333
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 336
    if-nez v0, :cond_2

    .line 339
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v1, "file://"

    .line 341
    if-eqz v0, :cond_1

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 345
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 348
    :cond_2
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 354
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 221
    const-string v1, "cb"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->u:Ljava/lang/String;

    .line 223
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 225
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u9009\u62e9\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u9009\u62e9\u4e0a\u4f20\u56fe\u7247\u7684\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4ece\u5df2\u6709\u76f8\u518c\u4e2d\u9009\u62e9"

    new-instance v2, Lcn/domob/android/ads/a/c$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/c$2;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u7167\u76f8\u83b7\u5f97\u56fe\u7247"

    new-instance v2, Lcn/domob/android/ads/a/c$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/c$1;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->c()Z

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->e()Z

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lcn/domob/android/ads/a/c$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/a/c$b;-><init>(Lcn/domob/android/ads/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcn/domob/android/ads/a/c$c;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p4}, Lcn/domob/android/ads/a/c$c;-><init>(Lcn/domob/android/ads/a/c;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/domob/android/ads/a/c;->y:Landroid/os/Handler;

    .line 73
    invoke-virtual {v0}, Lcn/domob/android/ads/a/c$b;->start()V

    .line 74
    return-void
.end method

.method static synthetic b()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/c;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/domob/android/ads/a/c;->r:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 183
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/a/c;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const/16 v2, 0x929

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcn/domob/android/ads/a/c;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/ads/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/a/c;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const/16 v2, 0x92a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    const-string v0, ""

    .line 154
    if-eqz v1, :cond_0

    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "webview_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    new-instance v1, Lcn/domob/android/ads/a/c$a;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$a;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/h$a;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "update the pic taken"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo saving path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, ""

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(true,\'file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v1, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_1
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "update the pic selected"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 269
    if-nez p3, :cond_1

    .line 270
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    const-string v1, "album select url is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->z:Landroid/net/Uri;

    .line 274
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->z:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const-string/jumbo v1, "\u4e0a\u4f20\u683c\u5f0f\u6709\u8bef,\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u9009\u62e9\u4e0a\u4f20\u56fe\u7247"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 280
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 281
    const-wide/32 v4, 0x300000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 282
    sget-object v0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "the size of upload pic is larger than 3M"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Landroid/app/Activity;

    const-string/jumbo v1, "\u4e0a\u4f20\u56fe\u7247\u5c3a\u5bf8\u4e0d\u80fd\u5927\u4e8e3M,\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u9009\u62e9\u4e0a\u4f20\u56fe\u7247"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 287
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(true,\'file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    sget-object v1, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->t:Lcn/domob/android/ads/a/b;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x929
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

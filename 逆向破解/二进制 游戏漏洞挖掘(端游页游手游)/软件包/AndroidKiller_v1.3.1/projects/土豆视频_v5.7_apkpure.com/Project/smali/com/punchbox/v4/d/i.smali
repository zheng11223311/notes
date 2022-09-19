.class public abstract Lcom/punchbox/v4/d/i;
.super Ljava/lang/Object;


# static fields
.field private static A:Z

.field private static B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Z

.field protected static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/data/DownloadedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/engine/PreDownloadData;",
            ">;"
        }
    .end annotation
.end field

.field protected static o:Ljava/lang/String;

.field protected static p:Ljava/lang/String;

.field protected static q:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private D:Lcom/punchbox/listener/a;

.field private E:Ljava/lang/Runnable;

.field protected a:Lcom/punchbox/ads/a;

.field protected b:Landroid/app/Activity;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/view/ViewGroup;

.field protected h:Lcom/punchbox/ads/AdRequest;

.field protected i:J

.field protected j:J

.field protected k:Ljava/lang/String;

.field protected n:Lcom/punchbox/engine/ad;

.field protected r:I

.field protected s:Lcom/punchbox/util/d;

.field protected t:Lcom/punchbox/v4/d/a;

.field protected u:Landroid/os/Handler;

.field private w:Lcom/punchbox/listener/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    sput-object v1, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    sput-object v1, Lcom/punchbox/v4/d/i;->m:Ljava/util/ArrayList;

    sput-object v1, Lcom/punchbox/v4/d/i;->x:Ljava/lang/String;

    sput-object v1, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    sput-object v1, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/punchbox/v4/d/i;->o:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/punchbox/v4/d/i;->p:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/punchbox/v4/d/i;->q:Ljava/lang/String;

    sput-boolean v2, Lcom/punchbox/v4/d/i;->A:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/punchbox/v4/d/i;->C:Z

    return-void
.end method

.method public constructor <init>(Lcom/punchbox/ads/a;Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->w:Lcom/punchbox/listener/AdListener;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->a:Lcom/punchbox/ads/a;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/punchbox/v4/d/i;->d:Z

    iput-boolean v2, p0, Lcom/punchbox/v4/d/i;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/d/i;->f:Z

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    iput-wide v4, p0, Lcom/punchbox/v4/d/i;->i:J

    iput-wide v4, p0, Lcom/punchbox/v4/d/i;->j:J

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    iput v2, p0, Lcom/punchbox/v4/d/i;->r:I

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    iput-object v1, p0, Lcom/punchbox/v4/d/i;->t:Lcom/punchbox/v4/d/a;

    new-instance v0, Lcom/punchbox/v4/d/l;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/l;-><init>(Lcom/punchbox/v4/d/i;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->u:Landroid/os/Handler;

    new-instance v0, Lcom/punchbox/v4/d/m;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/m;-><init>(Lcom/punchbox/v4/d/i;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->D:Lcom/punchbox/listener/a;

    new-instance v0, Lcom/punchbox/v4/d/n;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/n;-><init>(Lcom/punchbox/v4/d/i;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->E:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/punchbox/v4/d/i;->a:Lcom/punchbox/ads/a;

    iput-object p2, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/punchbox/v4/d/i;->c:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/d/i;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->x:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/punchbox/v4/d/i;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/punchbox/util/d;->a(Landroid/content/Context;)Lcom/punchbox/util/d;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/v4/d/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/punchbox/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->a()V

    invoke-direct {p0}, Lcom/punchbox/v4/d/i;->l()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "chukong_publisherid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publisherid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get publisherID from AndroidManifest.xml failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "get app versionname from PackageInfo failed."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "chukong_publisherid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save publisherid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/punchbox/engine/PreDownloadData;)V
    .locals 5

    invoke-virtual {p1}, Lcom/punchbox/engine/PreDownloadData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/punchbox/engine/PreDownloadData;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/punchbox/util/i;->a(Landroid/content/Context;Ljava/io/File;)Lcom/punchbox/v4/d/o;

    move-result-object v2

    iget-object v2, v2, Lcom/punchbox/v4/d/o;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/punchbox/v4/d/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v2

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/punchbox/v4/d/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "clicktype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ClickList"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/punchbox/util/d;->a(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/v4/d/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/d/i;->m()V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/d/i;Lcom/punchbox/engine/PreDownloadData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/engine/PreDownloadData;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/d/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/v4/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->w:Lcom/punchbox/listener/AdListener;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/punchbox/v4/d/i;->C:Z

    return p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->a()V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-eqz v0, :cond_6

    const-string v0, "&"

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "placeid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v1, "pid="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v1, "appv="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string v1, "adtype="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    sget-object v1, Lcom/punchbox/v4/o/a;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    const/16 v1, 0x89d

    invoke-virtual {v0, p2, v1}, Lcom/punchbox/util/d;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0, p1, p2}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    const/16 v1, 0x900

    invoke-virtual {v0, p2, v1}, Lcom/punchbox/util/d;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    const/16 v1, 0x8fe

    invoke-virtual {v0, p2, v1}, Lcom/punchbox/util/d;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/punchbox/v4/d/i;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/punchbox/v4/d/i;->A:Z

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    const-string v1, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    invoke-static {v0, v1}, Lcom/punchbox/v4/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    sget-object v1, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    const-string v2, "com.punchbox.ads"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/b;Ljava/lang/String;)V

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    sget-object v1, Lcom/punchbox/v4/b/b;->c:Lcom/punchbox/v4/b/b;

    const-string v2, "4.1.5"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/b;Ljava/lang/String;)V

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    sget-object v1, Lcom/punchbox/v4/b/b;->a:Lcom/punchbox/v4/b/b;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/b;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/v4/d/i;->m()V

    new-instance v0, Lcom/punchbox/v4/d/k;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/d/k;-><init>(Lcom/punchbox/v4/d/i;)V

    const-string v1, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    invoke-static {v1, v0}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 3

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    const-string v1, "adconfig.banner_moregame"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->p:Ljava/lang/String;

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    const-string v1, "adconfig.button_moregame"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->q:Ljava/lang/String;

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    const-string v1, "adconfig.innerAd"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/i;->o:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adconfig.moregame:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/punchbox/v4/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/d/i;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->u:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/punchbox/engine/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0, p0}, Lcom/punchbox/engine/ad;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0}, Lcom/punchbox/engine/ad;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/punchbox/exception/PBException;

    invoke-direct {v0, p1, p2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->w:Lcom/punchbox/listener/AdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->w:Lcom/punchbox/listener/AdListener;

    invoke-interface {v1, v0}, Lcom/punchbox/listener/AdListener;->onFailedToReceiveAd(Lcom/punchbox/exception/PBException;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    return-void
.end method

.method public declared-synchronized a(Lcom/punchbox/ads/AdRequest;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    :cond_0
    iget-boolean v0, p0, Lcom/punchbox/v4/d/i;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/i;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/d/i;->d:Z

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/d/i;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/punchbox/util/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "loadAd"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->D:Lcom/punchbox/listener/a;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/listener/a;)V

    sget-object v0, Lcom/punchbox/engine/i;->k:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/engine/i;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/punchbox/v4/d/i;->C:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "prepare to get predown list."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/punchbox/v4/d/i;->C:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Lcom/punchbox/exception/PBException;)V
.end method

.method public a(Lcom/punchbox/listener/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/i;->w:Lcom/punchbox/listener/AdListener;

    return-void
.end method

.method a(Lcom/punchbox/listener/a;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/v4/d/i;->i:J

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/punchbox/ads/AdRequest;->setAdType(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/ads/AdRequest;->setPublisherID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    sget-object v1, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/ads/AdRequest;->setAppVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/punchbox/v4/d/x;

    iget-object v2, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/punchbox/v4/d/i;->h:Lcom/punchbox/ads/AdRequest;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/punchbox/v4/d/x;-><init>(Landroid/content/Context;Lcom/punchbox/ads/AdRequest;Lcom/punchbox/v4/d/i;Lcom/punchbox/listener/a;)V

    const-string v2, "loadad"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract a(Lcom/punchbox/response/b;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/punchbox/v4/d/i;->j:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/punchbox/util/d;->a(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    const/16 v2, 0x8fd

    invoke-virtual {v1, v0, v2}, Lcom/punchbox/util/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->a()V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-direct {p0}, Lcom/punchbox/v4/d/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/punchbox/v4/d/i;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    sput-object p1, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/punchbox/v4/d/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "start="

    const-string/jumbo v1, "sp="

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end="

    const-string v2, "ep="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    new-instance v2, Lcom/punchbox/ads/AdRequest;

    invoke-direct {v2}, Lcom/punchbox/ads/AdRequest;-><init>()V

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/punchbox/ads/AdRequest;->setAdType(I)V

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/punchbox/ads/AdRequest;->setPublisherID(Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/punchbox/ads/AdRequest;->setAppVersion(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcom/punchbox/ads/AdRequest;->setEventType(I)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/punchbox/v4/d/j;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/punchbox/v4/d/j;-><init>(Lcom/punchbox/v4/d/i;Lcom/punchbox/ads/AdRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected b()Z
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/16 v1, 0x7d3

    const-string v2, "android sdk level below 8"

    invoke-virtual {p0, v1, v2}, Lcom/punchbox/v4/d/i;->a(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    if-nez v1, :cond_1

    const/16 v1, 0x7d9

    const-string v2, "Activity has been destroyed"

    invoke-virtual {p0, v1, v2}, Lcom/punchbox/v4/d/i;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/punchbox/util/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/punchbox/exception/PBException;

    const/16 v2, 0x7d0

    const-string v3, "There isn\'t any activate network connection in your mobile"

    invoke-direct {v1, v2, v3}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/punchbox/exception/PBException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/punchbox/v4/d/i;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/exception/PBException;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract c()V
.end method

.method protected c(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "apps"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0}, Lcom/punchbox/engine/ad;->a()V

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    if-eqz v0, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/data/DownloadedAppInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/punchbox/engine/i;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/punchbox/data/DownloadedAppInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-static {v7, v0}, Lcom/punchbox/util/i;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v2

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_5

    aget-object v1, v2, v0

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    :try_start_2
    const-string v0, "installed"

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    :try_start_3
    const-string v0, "download"

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/a;->a(Ljava/lang/String;)V

    :cond_8
    return-void

    :catch_2
    move-exception v0

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "construct installed list failed"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "construct downloaded list failed"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected abstract d()I
.end method

.method protected d(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/data/DownloadedAppInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/punchbox/engine/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/punchbox/data/DownloadedAppInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/punchbox/util/i;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v2, "parse APK error or start install error"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/v4/d/i;->e:Z

    return v0
.end method

.method public abstract f()V
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/punchbox/v4/d/i;->r:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/punchbox/v4/e/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/punchbox/v4/d/i;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "evt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CounterList"

    invoke-virtual {v1, v0, v2}, Lcom/punchbox/engine/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/punchbox/v4/d/i;->r:I

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    const-string v1, "before unInitialize"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/punchbox/v4/d/i;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInitialize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0, p0}, Lcom/punchbox/engine/ad;->b(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lcom/punchbox/v4/d/i;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    :cond_5
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    invoke-virtual {v0}, Lcom/punchbox/util/d;->a()V

    :cond_6
    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    :cond_7
    invoke-static {}, Lcom/punchbox/v4/b/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/i;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/punchbox/v4/d/i;->y:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/d/i;->z:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/i;->c:Ljava/lang/String;

    return-object v0
.end method

.class Lcn/domob/android/ads/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/a$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "url"

.field private static final f:Ljava/lang/String; = "failsafe"

.field private static final g:Ljava/lang/String; = "pkg"

.field private static final h:Ljava/lang/String; = "activity"

.field private static final i:Ljava/lang/String; = "param"


# instance fields
.field a:Lcn/domob/android/ads/c/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private d:Lcn/domob/android/ads/a/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/a/a$a;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    .line 35
    iput-object p1, p0, Lcn/domob/android/ads/a/a;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcn/domob/android/ads/a/a;->c:Landroid/net/Uri;

    .line 37
    iput-object p3, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    .line 38
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x10000000

    .line 78
    const/4 v2, 0x0

    .line 79
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/high16 v0, 0x10000000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryParams : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 115
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    array-length v4, v2

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 117
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 118
    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 91
    :goto_2
    iget-object v2, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    const-string v4, "Error happened in decoding launchURL"

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_1
    if-eqz v4, :cond_3

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    if-eqz v5, :cond_2

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Activity is not null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Activity is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Package name is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 122
    :cond_4
    return-object v1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/a;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Action intent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/a/a;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    invoke-interface {v0}, Lcn/domob/android/ads/a/a$a;->b_()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->c:Landroid/net/Uri;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 65
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup action ----- Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/a/a$a;->a_(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcn/domob/android/ads/a/a;->d:Lcn/domob/android/ads/a/a$a;

    invoke-interface {v0}, Lcn/domob/android/ads/a/a$a;->a_()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    const-string v2, "Invalid failsafe URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcn/domob/android/ads/a/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

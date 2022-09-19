.class public Lcn/domob/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/c/c$a;
    }
.end annotation


# instance fields
.field a:Lcn/domob/android/ads/c/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcn/domob/android/c/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/c/c$a;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/c/c;->a:Lcn/domob/android/ads/c/f;

    .line 31
    iput-object p1, p0, Lcn/domob/android/c/c;->b:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/c;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcn/domob/android/c/c;->d:Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lcn/domob/android/c/c;->e:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcn/domob/android/c/c;->f:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcn/domob/android/c/c;->g:Lcn/domob/android/c/c$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcn/domob/android/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/c/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-static {v0}, Lcn/domob/android/c/a;->a(I)V

    .line 93
    return-void
.end method

.method static synthetic c(Lcn/domob/android/c/c;)Lcn/domob/android/c/c$a;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->g:Lcn/domob/android/c/c$a;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/c/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/c/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/c;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/android/c/c$1;

    invoke-direct {v1, p0}, Lcn/domob/android/c/c$1;-><init>(Lcn/domob/android/c/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.class public Lcn/domob/android/f/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/f/a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/c/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/IntentFilter;

.field private d:Lcn/domob/android/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/f/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/f/a;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/f/a$a;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/domob/android/f/a;->b:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/domob/android/f/a;->c:Landroid/content/IntentFilter;

    .line 27
    iget-object v0, p0, Lcn/domob/android/f/a;->c:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcn/domob/android/f/a;->c:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcn/domob/android/f/a;->d:Lcn/domob/android/f/a$a;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/f/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcn/domob/android/f/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/f/a;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    :cond_0
    return-void
.end method

.method public a(Lcn/domob/android/f/a$a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/domob/android/f/a;->d:Lcn/domob/android/f/a$a;

    .line 39
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/android/f/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/domob/android/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/domob/android/f/a;->d:Lcn/domob/android/f/a$a;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v0, Lcn/domob/android/f/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "screen off"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/domob/android/f/a;->d:Lcn/domob/android/f/a$a;

    invoke-interface {v0}, Lcn/domob/android/f/a$a;->b()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcn/domob/android/f/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "screen on"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcn/domob/android/f/a;->d:Lcn/domob/android/f/a$a;

    invoke-interface {v0}, Lcn/domob/android/f/a$a;->a()V

    goto :goto_0
.end method

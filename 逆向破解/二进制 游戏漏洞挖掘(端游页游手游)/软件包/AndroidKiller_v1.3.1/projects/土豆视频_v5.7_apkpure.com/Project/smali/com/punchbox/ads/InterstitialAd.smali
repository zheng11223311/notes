.class public Lcom/punchbox/ads/InterstitialAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/ads/a;


# static fields
.field private static a:Lcom/punchbox/v4/d/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/punchbox/ads/InterstitialAd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/v4/d/w;

    invoke-direct {v0, p0, p1}, Lcom/punchbox/v4/d/w;-><init>(Lcom/punchbox/ads/a;Landroid/app/Activity;)V

    sput-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    :cond_0
    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->a(Landroid/app/Activity;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/w;->g()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/w;->f()V

    return-void
.end method

.method public donotReloadAfterClose()V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/w;->l()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/w;->e()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/punchbox/ads/AdRequest;)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/ads/AdRequest;)V

    return-void
.end method

.method public setAdListener(Lcom/punchbox/listener/AdListener;)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/listener/AdListener;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->c(I)V

    return-void
.end method

.method public setCloseMode(I)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->a(I)V

    return-void
.end method

.method public setDisplayTime(I)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->b(I)V

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/w;->b(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/punchbox/exception/PBException;
        }
    .end annotation

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1, p2}, Lcom/punchbox/v4/d/w;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public showFloatView(Landroid/app/Activity;DLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/punchbox/exception/PBException;
        }
    .end annotation

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/punchbox/v4/d/w;->a(Landroid/app/Activity;DLjava/lang/String;)V

    return-void
.end method

.method public showInnerAd(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/punchbox/v4/d/w;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public showPreAd(Landroid/app/Activity;D)V
    .locals 2

    sget-object v0, Lcom/punchbox/ads/InterstitialAd;->a:Lcom/punchbox/v4/d/w;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/punchbox/v4/d/w;->b(Landroid/app/Activity;DLjava/lang/String;)V

    return-void
.end method

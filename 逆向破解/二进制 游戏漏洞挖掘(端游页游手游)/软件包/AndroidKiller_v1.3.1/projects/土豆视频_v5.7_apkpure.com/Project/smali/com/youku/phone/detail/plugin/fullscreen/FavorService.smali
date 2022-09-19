.class public Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
.super Ljava/lang/Object;
.source "FavorService.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;
    }
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field public netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FavorService;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cacelfav(Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "netListener"    # Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    .prologue
    .line 53
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    .line 54
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    .line 55
    .local v0, "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    const/4 v1, 0x0

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FavorService;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/tudou/service/favourite/IFavouriteVedio;->deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    .line 74
    return-void
.end method

.method public distory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->handler:Landroid/os/Handler;

    .line 48
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    .line 49
    return-void
.end method

.method public favor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "totaltime"    # Ljava/lang/String;
    .param p5, "picurl"    # Ljava/lang/String;
    .param p6, "netListener"    # Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    .prologue
    .line 85
    iput-object p6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    .line 88
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    .line 89
    .local v0, "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$3;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FavorService;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/tudou/service/favourite/IFavouriteVedio;->addToFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    .line 159
    return-void
.end method

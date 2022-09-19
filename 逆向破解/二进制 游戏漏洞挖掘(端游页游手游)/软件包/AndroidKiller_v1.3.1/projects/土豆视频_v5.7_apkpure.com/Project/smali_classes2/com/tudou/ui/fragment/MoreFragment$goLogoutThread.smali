.class public Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;
.super Ljava/lang/Thread;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goLogoutThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 967
    :try_start_0
    const-class v3, Lcom/youku/service/login/ILogin;

    invoke-static {v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/service/login/ILogin;

    .line 968
    .local v2, "ilogin":Lcom/youku/service/login/ILogin;
    invoke-interface {v2}, Lcom/youku/service/login/ILogin;->logout()V

    .line 969
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    .line 970
    .local v0, "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    invoke-interface {v0}, Lcom/tudou/service/favourite/IFavouriteVedio;->onUserQuitCallBack()V

    .line 971
    invoke-static {}, Lcom/tudou/service/favourite/FavouritePlaylistManager;->getInstance()Lcom/tudou/service/favourite/IFavouritePlaylist;

    move-result-object v1

    .line 972
    .local v1, "favouriteplaylist":Lcom/tudou/service/favourite/IFavouritePlaylist;
    invoke-interface {v1}, Lcom/tudou/service/favourite/IFavouritePlaylist;->onUserQuitCallBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    .end local v0    # "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    .end local v1    # "favouriteplaylist":Lcom/tudou/service/favourite/IFavouritePlaylist;
    .end local v2    # "ilogin":Lcom/youku/service/login/ILogin;
    :goto_0
    return-void

    .line 976
    :catchall_0
    move-exception v3

    throw v3

    .line 974
    :catch_0
    move-exception v3

    goto :goto_0
.end method

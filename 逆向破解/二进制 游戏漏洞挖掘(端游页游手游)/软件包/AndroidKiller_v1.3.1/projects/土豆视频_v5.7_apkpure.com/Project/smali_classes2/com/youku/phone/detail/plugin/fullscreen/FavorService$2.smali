.class Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;
.super Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.source "FavorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->cacelfav(Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FavorService;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

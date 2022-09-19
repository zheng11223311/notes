.class Lcom/youku/gamecenter/widgets/GameInfoListView$2;
.super Ljava/lang/Object;
.source "GameInfoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/GameInfoListView;->fetchResponseDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/GameInfoListView;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$2;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lcom/youku/gamecenter/services/GetGameListService;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$2;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->access$000(Lcom/youku/gamecenter/widgets/GameInfoListView;)Lcom/youku/gamecenter/GameBaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/GetGameListService;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "service":Lcom/youku/gamecenter/services/GetGameListService;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$2;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->access$100(Lcom/youku/gamecenter/widgets/GameInfoListView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$2;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetGameListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 281
    return-void
.end method

.class Lcom/youku/gamecenter/GamePresentDetailsActivity$1;
.super Ljava/lang/Object;
.source "GamePresentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GamePresentDetailsActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentDetailsActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$000(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->isNeedFinish:Z

    .line 117
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$200(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$000(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    const-string v3, "1"

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$100(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handleClickAction(Lcom/youku/gamecenter/present/PresentInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

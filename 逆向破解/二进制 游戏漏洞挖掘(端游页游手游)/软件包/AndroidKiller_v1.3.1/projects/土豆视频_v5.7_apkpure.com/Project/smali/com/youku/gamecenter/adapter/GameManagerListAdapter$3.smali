.class Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;
.super Ljava/lang/Object;
.source "GameManagerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onDeleteClickListner(Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerFragment;->getRightActionItemByStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)Lcom/youku/gamecenter/widgets/ActionItem;

    move-result-object v1

    .line 303
    .local v1, "item":Lcom/youku/gamecenter/widgets/ActionItem;
    sget-object v4, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/GameManagerFragment;->uninstallApp(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    sget v5, Lcom/youku/gamecenter/R$string;->game_download_promopt_dialog_title:I

    invoke-static {v4, v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$300(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;I)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    sget v5, Lcom/youku/gamecenter/R$string;->game_download_promopt_dialog_content:I

    invoke-static {v4, v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$300(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "content":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    sget v5, Lcom/youku/gamecenter/R$string;->str_delete:I

    invoke-static {v4, v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$300(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "okTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$200(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerActivity;

    move-result-object v5

    new-instance v6, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;

    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v6, v7, v8, v1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;-><init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/widgets/ActionItem;)V

    invoke-static {v5, v3, v0, v2, v6}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$402(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/widgets/SimplePromptDialog;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    goto :goto_0
.end method

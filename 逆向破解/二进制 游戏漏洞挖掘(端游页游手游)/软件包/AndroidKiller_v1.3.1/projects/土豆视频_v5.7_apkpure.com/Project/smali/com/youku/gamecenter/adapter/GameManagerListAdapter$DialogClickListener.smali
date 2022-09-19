.class Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;
.super Ljava/lang/Object;
.source "GameManagerListAdapter.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field private info:Lcom/youku/gamecenter/data/GameInfo;

.field private item:Lcom/youku/gamecenter/widgets/ActionItem;

.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/widgets/ActionItem;)V
    .locals 0
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "item"    # Lcom/youku/gamecenter/widgets/ActionItem;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    .line 353
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->item:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 354
    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$400(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$400(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->dismiss()V

    .line 369
    :cond_0
    return-void
.end method

.method public onOkClicked()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$400(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$400(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->dismiss()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->item:Lcom/youku/gamecenter/widgets/ActionItem;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/GameManagerFragment;->handleActionButtonClick(Lcom/youku/gamecenter/widgets/ActionItem;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 362
    return-void
.end method

.class Lcom/tudou/ui/fragment/RowPieceTableFragment$3;
.super Ljava/lang/Object;
.source "RowPieceTableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RowPieceTableFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$700(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$200(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$900(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$1000(Lcom/tudou/ui/fragment/RowPieceTableFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

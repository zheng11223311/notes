.class Lcom/tudou/ui/fragment/RowPieceTableFragment$2;
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
    .line 146
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$2;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$2;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$200(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 150
    return-void
.end method

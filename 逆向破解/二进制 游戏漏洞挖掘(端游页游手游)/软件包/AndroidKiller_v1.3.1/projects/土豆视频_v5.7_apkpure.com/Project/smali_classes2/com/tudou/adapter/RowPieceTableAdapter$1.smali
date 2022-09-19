.class Lcom/tudou/adapter/RowPieceTableAdapter$1;
.super Ljava/lang/Object;
.source "RowPieceTableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/RowPieceTableAdapter;->setData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/RowPieceTableAdapter;

.field final synthetic val$index:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/RowPieceTableAdapter;II)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->this$0:Lcom/tudou/adapter/RowPieceTableAdapter;

    iput p2, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->val$position:I

    iput p3, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->this$0:Lcom/tudou/adapter/RowPieceTableAdapter;

    iget v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->val$position:I

    iget v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter$1;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/tudou/adapter/RowPieceTableAdapter;->goDetailActivity(II)V

    .line 143
    return-void
.end method

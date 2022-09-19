.class Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;
.super Ljava/lang/Object;
.source "VideoSelectnessAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoSelectnessAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoSelectnessAdapter;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    iput p2, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    invoke-static {v0}, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;->access$000(Lcom/tudou/detail/adapter/VideoSelectnessAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    invoke-static {v0}, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;->access$000(Lcom/tudou/detail/adapter/VideoSelectnessAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$2;->val$i:I

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 79
    :cond_0
    return-void
.end method

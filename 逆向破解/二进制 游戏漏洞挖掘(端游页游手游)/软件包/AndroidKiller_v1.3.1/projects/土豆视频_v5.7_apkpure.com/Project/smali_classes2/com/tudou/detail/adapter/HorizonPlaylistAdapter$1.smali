.class Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;
.super Ljava/lang/Object;
.source "HorizonPlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

.field final synthetic val$positon:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    iput p2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;->val$positon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-static {v0}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->access$000(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-static {v0}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->access$000(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;->val$positon:I

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 102
    :cond_0
    return-void
.end method

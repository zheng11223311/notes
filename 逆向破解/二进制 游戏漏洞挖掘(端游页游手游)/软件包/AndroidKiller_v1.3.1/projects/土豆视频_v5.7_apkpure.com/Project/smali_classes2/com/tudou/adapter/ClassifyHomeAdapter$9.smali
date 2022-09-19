.class Lcom/tudou/adapter/ClassifyHomeAdapter$9;
.super Ljava/lang/Object;
.source "ClassifyHomeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyHomeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

.field final synthetic val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

.field final synthetic val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iput-object p3, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$9;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/adapter/ClassifyHomeAdapter;->access$100(Lcom/tudou/adapter/ClassifyHomeAdapter;IILcom/youku/vo/ChannelListInfo;)Z

    .line 286
    return-void
.end method

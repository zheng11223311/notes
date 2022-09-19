.class Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;
.super Ljava/lang/Object;
.source "RecommendRoomsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;->this$0:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;->this$0:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;->this$0:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->access$000(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;->this$0:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;->OnRoomClick(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

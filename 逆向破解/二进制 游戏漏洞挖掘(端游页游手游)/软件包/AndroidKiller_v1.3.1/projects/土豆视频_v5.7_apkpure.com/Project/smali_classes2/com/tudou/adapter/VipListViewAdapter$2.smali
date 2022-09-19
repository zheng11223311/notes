.class Lcom/tudou/adapter/VipListViewAdapter$2;
.super Ljava/lang/Object;
.source "VipListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/VipListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/VipListViewAdapter;

.field final synthetic val$centrePosition:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/VipListViewAdapter;I)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->this$0:Lcom/tudou/adapter/VipListViewAdapter;

    iput p2, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->val$centrePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->this$0:Lcom/tudou/adapter/VipListViewAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/VipListViewAdapter;->access$000(Lcom/tudou/adapter/VipListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->this$0:Lcom/tudou/adapter/VipListViewAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/VipListViewAdapter;->access$100(Lcom/tudou/adapter/VipListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->val$centrePosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    iget v1, v1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->this$0:Lcom/tudou/adapter/VipListViewAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/VipListViewAdapter;->access$100(Lcom/tudou/adapter/VipListViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->val$centrePosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v3, v3, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->this$0:Lcom/tudou/adapter/VipListViewAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/VipListViewAdapter;->access$100(Lcom/tudou/adapter/VipListViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/tudou/adapter/VipListViewAdapter$2;->val$centrePosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v5, v5, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

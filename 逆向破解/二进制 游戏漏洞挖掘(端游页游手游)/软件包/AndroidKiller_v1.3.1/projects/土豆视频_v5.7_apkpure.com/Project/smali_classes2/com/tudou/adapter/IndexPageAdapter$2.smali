.class Lcom/tudou/adapter/IndexPageAdapter$2;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initChannel(Lcom/tudou/adapter/IndexChannelItem;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$item:Lcom/youku/vo/ChannelListItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ChannelListItem;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->val$item:Lcom/youku/vo/ChannelListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->val$item:Lcom/youku/vo/ChannelListItem;

    iget-object v0, v0, Lcom/youku/vo/ChannelListItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 457
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$2;->val$item:Lcom/youku/vo/ChannelListItem;

    iget-object v1, v1, Lcom/youku/vo/ChannelListItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$100(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;)V

    .line 460
    return-void
.end method

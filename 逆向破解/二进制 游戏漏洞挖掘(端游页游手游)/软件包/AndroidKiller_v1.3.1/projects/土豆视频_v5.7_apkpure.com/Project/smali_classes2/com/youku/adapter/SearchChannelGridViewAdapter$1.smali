.class Lcom/youku/adapter/SearchChannelGridViewAdapter$1;
.super Ljava/lang/Object;
.source "SearchChannelGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelGridViewAdapter;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    iget-object v1, v0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    iget-object v0, v0, Lcom/youku/vo/UserPlayList;->data:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->val$p:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UserPlayItem;

    iget-object v2, v0, Lcom/youku/vo/UserPlayItem;->idCode:Ljava/lang/String;

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    iget-object v0, v0, Lcom/youku/vo/UserPlayList;->data:Ljava/util/ArrayList;

    iget v4, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;->val$p:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UserPlayItem;

    iget-object v0, v0, Lcom/youku/vo/UserPlayItem;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 75
    return-void
.end method

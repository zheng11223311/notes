.class Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SubConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field contentView:Lio/rong/imkit/widget/ProviderContainerView;

.field layout:Landroid/view/View;

.field leftImageLayout:Landroid/view/View;

.field leftImageView:Lio/rong/imkit/widget/AsyncImageView;

.field rightImageLayout:Landroid/view/View;

.field rightImageView:Lio/rong/imkit/widget/AsyncImageView;

.field final synthetic this$0:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

.field unReadMsgCount:Landroid/widget/TextView;

.field unReadMsgCountIcon:Landroid/widget/ImageView;

.field unReadMsgCountRight:Landroid/widget/TextView;

.field unReadMsgCountRightIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/adapter/SubConversationListAdapter;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->this$0:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

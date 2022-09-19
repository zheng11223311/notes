.class Lcom/tudou/ui/fragment/ChannelSquareFragment$3;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/ChannelSquareActivity;->finish()V

    .line 195
    return-void
.end method

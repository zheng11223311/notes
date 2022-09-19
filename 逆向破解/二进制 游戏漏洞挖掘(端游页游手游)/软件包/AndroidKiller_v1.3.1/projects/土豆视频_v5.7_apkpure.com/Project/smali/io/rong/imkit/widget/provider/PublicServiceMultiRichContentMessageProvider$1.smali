.class Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;
.super Ljava/lang/Object;
.source "PublicServiceMultiRichContentMessageProvider.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->bindView(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

.field final synthetic val$msgList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->val$msgList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->val$msgList:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/message/RichContentItem;

    .line 68
    .local v1, "item":Lio/rong/message/RichContentItem;
    invoke-virtual {v1}, Lio/rong/message/RichContentItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-static {v3}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-static {v3}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

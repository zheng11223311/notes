.class Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;
.super Landroid/widget/BaseAdapter;
.source "PublicServiceMultiRichContentMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicAccountMsgAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field itemCount:I

.field itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/RichContentItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/RichContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/message/RichContentItem;>;"
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 177
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    .line 179
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemCount:I

    .line 181
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemCount:I

    return v0
.end method

.method public getItem(I)Lio/rong/message/RichContentItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/message/RichContentItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->getItem(I)Lio/rong/message/RichContentItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 198
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lio/rong/imkit/R$layout;->rc_item_public_service_message:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 205
    sget v4, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/AsyncImageView;

    .line 206
    .local v0, "iv":Lio/rong/imkit/widget/AsyncImageView;
    sget v4, Lio/rong/imkit/R$id;->rc_txt:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object p2, v3

    .line 217
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 211
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/message/RichContentItem;

    invoke-virtual {v3}, Lio/rong/message/RichContentItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    new-instance v4, Lcom/sea_monster/resource/Resource;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;->itemList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/message/RichContentItem;

    invoke-virtual {v3}, Lio/rong/message/RichContentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sea_monster/resource/Resource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto :goto_0
.end method

.class Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmojiAdapter"
.end annotation


# instance fields
.field em:[Lio/rong/imkit/model/Emoji;

.field mCount:I

.field mEmojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field mOffset:I

.field final synthetic this$0:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;IILjava/util/List;)V
    .locals 8
    .param p2, "count"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "emojis":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/Emoji;>;"
    const/4 v7, 0x0

    .line 99
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->this$0:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mCount:I

    .line 101
    iput p3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mOffset:I

    .line 102
    const-string v2, "EmojiAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p4, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    .line 106
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, p3, p2

    if-le v2, v3, :cond_0

    .line 107
    new-array v2, p2, [Lio/rong/imkit/model/Emoji;

    iput-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 109
    iget-object v3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    new-instance v4, Lio/rong/imkit/model/Emoji;

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    add-int v5, p3, v0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getCode()I

    move-result v5

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    add-int v6, p3, v0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lio/rong/imkit/model/Emoji;-><init>(II)V

    aput-object v4, v3, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, p3

    .line 113
    .local v1, "size":I
    if-ge v1, p2, :cond_1

    .line 114
    new-array v2, p2, [Lio/rong/imkit/model/Emoji;

    iput-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    .line 115
    move v1, p2

    .line 120
    :goto_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 121
    add-int v2, v0, p3

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 122
    iget-object v3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    new-instance v4, Lio/rong/imkit/model/Emoji;

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    add-int v5, p3, v0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getCode()I

    move-result v5

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    add-int v6, p3, v0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lio/rong/imkit/model/Emoji;-><init>(II)V

    aput-object v4, v3, v0

    .line 120
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    .end local v0    # "i":I
    :cond_1
    new-array v2, v1, [Lio/rong/imkit/model/Emoji;

    iput-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    goto :goto_1

    .line 124
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    new-instance v3, Lio/rong/imkit/model/Emoji;

    invoke-direct {v3, v7, v7}, Lio/rong/imkit/model/Emoji;-><init>(II)V

    aput-object v3, v2, v0

    goto :goto_3

    .line 128
    .end local v1    # "size":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Lio/rong/imkit/model/Emoji;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mEmojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/Emoji;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->getItem(I)Lio/rong/imkit/model/Emoji;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    const-string v1, "EmojiAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez p2, :cond_0

    .line 150
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->this$0:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;

    iget-object v1, v1, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lio/rong/imkit/R$layout;->rc_wi_emoji_txt:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 153
    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, "emoji":Landroid/widget/ImageView;
    iget v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->mCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 155
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->this$0:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;

    iget-object v1, v1, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-object p2

    .line 158
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lio/rong/imkit/model/Emoji;->getCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 159
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->this$0:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;

    iget-object v1, v1, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_emoji_block:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;->em:[Lio/rong/imkit/model/Emoji;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

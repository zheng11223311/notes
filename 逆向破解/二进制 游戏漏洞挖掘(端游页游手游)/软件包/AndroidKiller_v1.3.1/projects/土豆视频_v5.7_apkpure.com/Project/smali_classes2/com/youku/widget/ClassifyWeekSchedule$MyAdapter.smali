.class Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClassifyWeekSchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/ClassifyWeekSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final END_ITEM_TYPE:I = 0x1

.field private static final OTHER_ITEM_TYPE:I = 0x2

.field private static final START_ITEM_TYPE:I


# instance fields
.field private mChannelScheduleItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;

.field final synthetic this$0:Lcom/youku/widget/ClassifyWeekSchedule;


# direct methods
.method constructor <init>(Lcom/youku/widget/ClassifyWeekSchedule;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mChannelScheduleItem:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mChannelScheduleItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mChannelScheduleItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 103
    check-cast p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->onBindViewHolder(Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;I)V
    .locals 8
    .param p1, "mItemViewHolder"    # Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    .line 146
    iget-object v4, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mChannelScheduleItem:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelScheduleItem;

    .line 147
    .local v2, "mCardsInfo":Lcom/youku/vo/ChannelScheduleItem;
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->getItemCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 148
    if-eqz p2, :cond_0

    .line 150
    rem-int/lit8 v4, p2, 0x2

    if-ne v4, v7, :cond_2

    .line 151
    iget-object v4, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-static {v4}, Lcom/youku/widget/ClassifyWeekSchedule;->access$000(Lcom/youku/widget/ClassifyWeekSchedule;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, "itemBg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mWeekView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .end local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/youku/vo/ChannelScheduleItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, v2, Lcom/youku/vo/ChannelScheduleItem;->update_episode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->episode:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7b2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/youku/vo/ChannelScheduleItem;->update_episode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u96c6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->episode:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 161
    .local v3, "redSpan":Landroid/text/style/ForegroundColorSpan;
    iget-object v4, v2, Lcom/youku/vo/ChannelScheduleItem;->update_episode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 162
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->episode:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "redSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    :goto_1
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mWeekView:Landroid/view/View;

    new-instance v5, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;

    invoke-direct {v5, p0, p2, v2}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;-><init>(Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;ILcom/youku/vo/ChannelScheduleItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-static {v4}, Lcom/youku/widget/ClassifyWeekSchedule;->access$000(Lcom/youku/widget/ClassifyWeekSchedule;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 165
    .end local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p1, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->weekSkip:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/youku/vo/ChannelScheduleItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "cardType"    # I

    .prologue
    .line 132
    const v1, 0x7f03008a

    .line 133
    .local v1, "layout":I
    const/4 v0, 0x0

    .line 134
    .local v0, "isEndItem":Z
    if-nez p2, :cond_0

    .line 135
    const v1, 0x7f030094

    .line 140
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;

    iget-object v4, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-direct {v3, v4, v2, v0}, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;-><init>(Lcom/youku/widget/ClassifyWeekSchedule;Landroid/view/View;Z)V

    return-object v3

    .line 136
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 137
    const v1, 0x7f030095

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;)V
    .locals 0
    .param p2, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelScheduleItem;",
            ">;",
            "Lcom/youku/vo/SkipInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "channelScheduleItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelScheduleItem;>;"
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mChannelScheduleItem:Ljava/util/List;

    .line 182
    iput-object p2, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 183
    return-void
.end method

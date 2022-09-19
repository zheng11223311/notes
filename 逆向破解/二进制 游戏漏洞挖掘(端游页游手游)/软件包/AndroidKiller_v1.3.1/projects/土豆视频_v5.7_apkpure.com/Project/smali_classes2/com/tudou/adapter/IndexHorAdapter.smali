.class public Lcom/tudou/adapter/IndexHorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "IndexHorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/adapter/IndexScrollCard;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChannelTitle:Ljava/lang/String;

.field private mWeekScheduleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/WeekScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekScheduleLabeles:Lcom/youku/vo/WeekScheduleLabels;


# direct methods
.method public constructor <init>(Lcom/youku/vo/WeekScheduleLabels;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "aWeekScheduleLabeles"    # Lcom/youku/vo/WeekScheduleLabels;
    .param p2, "aActivity"    # Landroid/app/Activity;
    .param p3, "aChannelTitle"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleLabeles:Lcom/youku/vo/WeekScheduleLabels;

    .line 36
    iget-object v0, p1, Lcom/youku/vo/WeekScheduleLabels;->item:Ljava/util/List;

    iput-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/tudou/adapter/IndexHorAdapter;->mChannelTitle:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/IndexHorAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexHorAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/IndexHorAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexHorAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexHorAdapter;->unionOnEventWeek(Ljava/lang/String;)V

    return-void
.end method

.method private getWeekSpannable(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10
    .param p1, "bokeOwner"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v1, "\u7b2c"

    .line 133
    .local v1, "di":Ljava/lang/String;
    const-string v2, "\u96c6"

    .line 135
    .local v2, "ji":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "midStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "showStr":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v5, "ss":Landroid/text/SpannableString;
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090132

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 139
    .local v0, "color":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    return-object v5
.end method

.method private getWeekSpannableZongYi(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8
    .param p1, "bokeOwner"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v1, "\u671f"

    .line 147
    .local v1, "qi":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "showStr":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    .local v3, "ss":Landroid/text/SpannableString;
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 150
    .local v0, "color":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_0
    return-object v3
.end method

.method private unionOnEventWeek(Ljava/lang/String;)V
    .locals 4
    .param p1, "cmsName"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v1, "t1.home_shome.bottomedit__"

    .line 161
    .local v1, "refercode":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    iget-object v3, p0, Lcom/tudou/adapter/IndexHorAdapter;->mChannelTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "cmstype"

    const-string v3, "\u6392\u7247\u8868"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "cmsname"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const/4 v0, 0x2

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/WeekScheduleItem;

    iget v0, v0, Lcom/youku/vo/WeekScheduleItem;->itemType:I

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 25
    check-cast p1, Lcom/tudou/adapter/IndexScrollCard;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/IndexHorAdapter;->onBindViewHolder(Lcom/tudou/adapter/IndexScrollCard;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/adapter/IndexScrollCard;I)V
    .locals 4
    .param p1, "card"    # Lcom/tudou/adapter/IndexScrollCard;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 70
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/WeekScheduleItem;

    .line 72
    .local v0, "item":Lcom/youku/vo/WeekScheduleItem;
    iget v2, v0, Lcom/youku/vo/WeekScheduleItem;->itemType:I

    if-nez v2, :cond_4

    .line 74
    if-nez p2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, "itemBg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->mTxtTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/WeekScheduleItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleLabeles:Lcom/youku/vo/WeekScheduleLabels;

    iget v2, v2, Lcom/youku/vo/WeekScheduleLabels;->channel_id:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_3

    .line 85
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->mTxtContent:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/WeekScheduleItem;->update_episode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tudou/adapter/IndexHorAdapter;->getWeekSpannableZongYi(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->itemView:Landroid/view/View;

    new-instance v3, Lcom/tudou/adapter/IndexHorAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/IndexHorAdapter$1;-><init>(Lcom/tudou/adapter/IndexHorAdapter;Lcom/youku/vo/WeekScheduleItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .end local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return-void

    .line 76
    :cond_1
    rem-int/lit8 v2, p2, 0x2

    if-ne v2, v3, :cond_2

    .line 77
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 79
    .end local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->mTxtContent:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/WeekScheduleItem;->update_episode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tudou/adapter/IndexHorAdapter;->getWeekSpannable(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    .end local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v2, v0, Lcom/youku/vo/WeekScheduleItem;->itemType:I

    if-ne v2, v3, :cond_0

    .line 104
    iget-object v2, p0, Lcom/tudou/adapter/IndexHorAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    .restart local v1    # "itemBg":Landroid/graphics/drawable/Drawable;
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v2, p1, Lcom/tudou/adapter/IndexScrollCard;->itemView:Landroid/view/View;

    new-instance v3, Lcom/tudou/adapter/IndexHorAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/IndexHorAdapter$2;-><init>(Lcom/tudou/adapter/IndexHorAdapter;Lcom/youku/vo/WeekScheduleItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/IndexHorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/adapter/IndexScrollCard;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/adapter/IndexScrollCard;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030190

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    :cond_0
    if-nez p2, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03018f

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    :cond_1
    :goto_0
    new-instance v1, Lcom/tudou/adapter/IndexScrollCard;

    invoke-direct {v1, v0}, Lcom/tudou/adapter/IndexScrollCard;-><init>(Landroid/view/View;)V

    return-object v1

    .line 62
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030191

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setData(Lcom/youku/vo/WeekScheduleLabels;)V
    .locals 1
    .param p1, "aWeekScheduleLabeles"    # Lcom/youku/vo/WeekScheduleLabels;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleLabeles:Lcom/youku/vo/WeekScheduleLabels;

    .line 43
    iget-object v0, p1, Lcom/youku/vo/WeekScheduleLabels;->item:Ljava/util/List;

    iput-object v0, p0, Lcom/tudou/adapter/IndexHorAdapter;->mWeekScheduleItems:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexHorAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

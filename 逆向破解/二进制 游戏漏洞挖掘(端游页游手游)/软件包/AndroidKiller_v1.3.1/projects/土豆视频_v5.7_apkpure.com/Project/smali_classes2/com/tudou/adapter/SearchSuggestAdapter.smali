.class public Lcom/tudou/adapter/SearchSuggestAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchSuggestAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchSuggestWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/adapter/SearchSuggestAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/vo/DropWordResult;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/vo/DropWordResult;)V
    .locals 1
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tempWord"    # Lcom/youku/vo/DropWordResult;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    iget-object v0, p2, Lcom/youku/vo/DropWordResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 64
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->inflater:Landroid/view/LayoutInflater;

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0302d5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 70
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    const v4, 0x7f0c0cd5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, "suggestText":Landroid/widget/TextView;
    const v4, 0x7f0c0cd8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, "suggestType":Landroid/widget/TextView;
    const v4, 0x7f0c0cd7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "sugImg":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchSuggestWord;

    iget-object v4, v4, Lcom/youku/vo/SearchSuggestWord;->cate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchSuggestWord;

    iget-object v4, v4, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchSuggestWord;

    iget-object v4, v4, Lcom/youku/vo/SearchSuggestWord;->aid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    const v4, 0x7f02084b

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_2
    return-object v3

    .line 68
    .end local v0    # "sugImg":Landroid/widget/ImageView;
    .end local v1    # "suggestText":Landroid/widget/TextView;
    .end local v2    # "suggestType":Landroid/widget/TextView;
    :cond_1
    move-object v3, p2

    goto :goto_0

    .line 78
    .restart local v0    # "sugImg":Landroid/widget/ImageView;
    .restart local v1    # "suggestText":Landroid/widget/TextView;
    .restart local v2    # "suggestType":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchSuggestWord;

    iget-object v4, v4, Lcom/youku/vo/SearchSuggestWord;->cate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchSuggestWord;

    iget-object v4, v4, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    const v4, 0x7f02084c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public setWords(Lcom/youku/vo/DropWordResult;)V
    .locals 1
    .param p1, "tempWord"    # Lcom/youku/vo/DropWordResult;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/youku/vo/DropWordResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tudou/adapter/SearchSuggestAdapter;->words:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/tudou/adapter/SearchSuggestAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

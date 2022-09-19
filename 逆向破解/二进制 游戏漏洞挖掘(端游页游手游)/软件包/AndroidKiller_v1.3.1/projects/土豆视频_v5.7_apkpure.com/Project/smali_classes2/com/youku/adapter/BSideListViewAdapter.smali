.class public Lcom/youku/adapter/BSideListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BSideListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field a:Lcom/tudou/ui/fragment/SearchTudouActivity;

.field private cate_id:I

.field inflater:Landroid/view/LayoutInflater;

.field page:I

.field pageData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowset;",
            ">;>;"
        }
    .end annotation
.end field

.field private resultPostion:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/SearchTudouActivity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "a"    # Lcom/tudou/ui/fragment/SearchTudouActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/ui/fragment/SearchTudouActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->resultPostion:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/youku/adapter/BSideListViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->results:Ljava/util/ArrayList;

    .line 48
    iput v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/youku/adapter/BSideListViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideListViewAdapter;

    .prologue
    .line 31
    iget v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->resultPostion:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getResultPostion()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->resultPostion:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance v0, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;-><init>(Lcom/youku/adapter/BSideListViewAdapter;)V

    .line 95
    .local v0, "holder":Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    const v1, 0x7f0c0ccd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$002(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 99
    const v1, 0x7f0c0ccc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->show_seq:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->cate_id:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 106
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v4, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v4, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    const v2, -0x2f2f30

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 114
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 117
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 144
    :goto_2
    return-object p2

    .line 102
    .end local v0    # "holder":Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 110
    :cond_1
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    iget v4, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 121
    :cond_2
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/adapter/BSideListViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    const v3, 0x7f0e01bd

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 123
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 125
    invoke-static {v0}, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/BSideListViewAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/youku/adapter/BSideListViewAdapter$1;-><init>(Lcom/youku/adapter/BSideListViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public setBSideListViewPageData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowset;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "pageData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowset;>;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    .line 54
    iput-object p1, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    .line 55
    invoke-virtual {p0}, Lcom/youku/adapter/BSideListViewAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public setCateId(I)V
    .locals 0
    .param p1, "cate_id"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/youku/adapter/BSideListViewAdapter;->cate_id:I

    .line 155
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/youku/adapter/BSideListViewAdapter;->page:I

    .line 60
    invoke-virtual {p0}, Lcom/youku/adapter/BSideListViewAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public setResultPostion(I)V
    .locals 3
    .param p1, "resultPostion"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/youku/adapter/BSideListViewAdapter;->resultPostion:I

    .line 69
    iget-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/youku/adapter/BSideListViewAdapter;->getResultPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageData:Ljava/util/Map;

    iput-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    .line 70
    const-string v0, "dazhu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LISTVIEW.setResultPostion - pageData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/adapter/BSideListViewAdapter;->pageData:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/youku/adapter/BSideListViewAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

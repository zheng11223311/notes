.class Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "AutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/AutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/AutoCompleteAdapter;


# direct methods
.method private constructor <init>(Lcom/tudou/adapter/AutoCompleteAdapter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/adapter/AutoCompleteAdapter;Lcom/tudou/adapter/AutoCompleteAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/adapter/AutoCompleteAdapter;
    .param p2, "x1"    # Lcom/tudou/adapter/AutoCompleteAdapter$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;-><init>(Lcom/tudou/adapter/AutoCompleteAdapter;)V

    return-void
.end method

.method private setOriginalValues(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 137
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "input":Ljava/lang/String;
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input======"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "index1":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$300(Lcom/tudou/adapter/AutoCompleteAdapter;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v6}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$300(Lcom/tudou/adapter/AutoCompleteAdapter;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "item":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->setOriginalValues(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 60
    .local v4, "results":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 68
    :cond_0
    iget-object v7, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v7}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 105
    :goto_0
    return-object v4

    .line 71
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "prefixString":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v7}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v2, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 78
    iget-object v7, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v7}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 79
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "valueText":Ljava/lang/String;
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sum============="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-static {v9}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "===================prefix===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==value=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 86
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefix===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==value=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 101
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "valueText":Ljava/lang/String;
    :cond_3
    iput-object v2, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/tudou/adapter/AutoCompleteAdapter;->access$202(Lcom/tudou/adapter/AutoCompleteAdapter;Ljava/util/List;)Ljava/util/List;

    .line 113
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;->this$0:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/AutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

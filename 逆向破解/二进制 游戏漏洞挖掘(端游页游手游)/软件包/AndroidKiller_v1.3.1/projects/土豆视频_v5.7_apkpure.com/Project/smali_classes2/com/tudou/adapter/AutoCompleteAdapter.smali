.class public Lcom/tudou/adapter/AutoCompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/AutoCompleteAdapter$1;,
        Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;,
        Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private arrayString:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mFilter:Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;

.field private final mLock:Ljava/lang/Object;

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxMatch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mOriginalValues:Ljava/util/List;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@sina.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@126.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@gmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@hotmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@sohu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@yahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@tom.com"

    aput-object v2, v0, v1

    const-string v1, "@vip.sina.com"

    aput-object v1, v0, v3

    const/16 v1, 0xb

    const-string v2, "@vip.qq.com"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "@21cn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "@189.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "@139.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "@wo.com.cn"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->arrayString:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mLock:Ljava/lang/Object;

    .line 29
    iput v3, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->maxMatch:I

    .line 34
    iput-object p1, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/tudou/adapter/AutoCompleteAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/AutoCompleteAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mOriginalValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/adapter/AutoCompleteAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/AutoCompleteAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tudou/adapter/AutoCompleteAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/AutoCompleteAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->arrayString:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAllItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "aAllItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mOriginalValues:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/tudou/adapter/AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/adapter/AutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mOriginalValues:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mFilter:Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;-><init>(Lcom/tudou/adapter/AutoCompleteAdapter;Lcom/tudou/adapter/AutoCompleteAdapter$1;)V

    iput-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mFilter:Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mFilter:Lcom/tudou/adapter/AutoCompleteAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "holder":Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 168
    new-instance v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/AutoCompleteAdapter;)V

    .line 169
    .restart local v0    # "holder":Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;
    iget-object v2, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 171
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 174
    iget-object v2, v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 175
    iget-object v2, v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 176
    iget-object v2, v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0e00f7

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 177
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/AutoCompleteAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-object p2

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;
    check-cast v0, Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/tudou/adapter/AutoCompleteAdapter$ViewHolder;
    goto :goto_0
.end method

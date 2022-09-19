.class public Lcom/youku/adapter/BSideGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BSideGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field a:Lcom/tudou/ui/fragment/SearchTudouActivity;

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

.field private playMode:Ljava/lang/String;

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

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->resultPostion:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->results:Ljava/util/ArrayList;

    .line 51
    iput v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    .line 52
    return-void
.end method

.method static synthetic access$300(Lcom/youku/adapter/BSideGridViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter;

    .prologue
    .line 33
    iget v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->resultPostion:I

    return v0
.end method

.method private setRelPadDriver(ILcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0x9

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/youku/adapter/BSideGridViewAdapter;->getCount()I

    move-result v1

    .line 167
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x5

    .line 168
    .local v2, "row":I
    rem-int/lit8 v0, v1, 0x5

    .line 170
    .local v0, "col":I
    packed-switch v2, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_1

    .line 173
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 174
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ne p1, v3, :cond_0

    .line 175
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 178
    :pswitch_1
    if-nez v0, :cond_3

    .line 179
    if-ge p1, v6, :cond_2

    .line 180
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 181
    :cond_2
    if-ne p1, v6, :cond_0

    .line 182
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 184
    :cond_3
    if-ge p1, v6, :cond_4

    .line 185
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 186
    :cond_4
    if-ne p1, v6, :cond_5

    .line 187
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 188
    :cond_5
    if-le p1, v6, :cond_6

    add-int/lit8 v3, p1, -0x4

    if-ge v3, v0, :cond_6

    .line 189
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 190
    :cond_6
    add-int/lit8 v3, p1, -0x4

    if-ne v3, v0, :cond_0

    .line 191
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 195
    :pswitch_2
    if-nez v0, :cond_a

    .line 196
    if-ge p1, v6, :cond_7

    .line 197
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 198
    :cond_7
    if-ne p1, v6, :cond_8

    .line 199
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 200
    :cond_8
    if-le p1, v6, :cond_9

    if-ge p1, v7, :cond_9

    .line 201
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 202
    :cond_9
    if-ne p1, v7, :cond_0

    .line 203
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 205
    :cond_a
    if-ge p1, v6, :cond_b

    .line 206
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 207
    :cond_b
    if-ne p1, v6, :cond_c

    .line 208
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 209
    :cond_c
    if-le p1, v6, :cond_d

    if-ge p1, v7, :cond_d

    .line 210
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 211
    :cond_d
    if-ne p1, v7, :cond_e

    .line 212
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 213
    :cond_e
    if-le p1, v7, :cond_f

    add-int/lit8 v3, p1, -0x9

    if-ge v3, v0, :cond_f

    .line 214
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 215
    :cond_f
    add-int/lit8 v3, p1, -0x9

    if-ne v3, v0, :cond_0

    .line 216
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 220
    :pswitch_3
    if-ge p1, v6, :cond_10

    .line 221
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 222
    :cond_10
    if-ne p1, v6, :cond_11

    .line 223
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 224
    :cond_11
    if-le p1, v6, :cond_12

    if-ge p1, v7, :cond_12

    .line 225
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 226
    :cond_12
    if-ne p1, v7, :cond_13

    .line 227
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 228
    :cond_13
    if-le p1, v7, :cond_14

    if-ge p1, v8, :cond_14

    .line 229
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 230
    :cond_14
    if-ne p1, v8, :cond_0

    .line 231
    invoke-static {p2}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPostion()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->resultPostion:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const v6, -0x2f2f30

    const/4 v5, 0x0

    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;-><init>(Lcom/youku/adapter/BSideGridViewAdapter;)V

    .line 100
    .local v0, "holder":Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302cb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    const v1, 0x7f0c0cc9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$002(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 104
    const v1, 0x7f0c0cca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$102(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 106
    const v1, 0x7f0c0cc8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$202(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/youku/adapter/BSideGridViewAdapter;->setRelPadDriver(ILcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)V

    .line 113
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v4, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->show_seq:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-boolean v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->isTrailer:Z

    if-eqz v1, :cond_1

    .line 115
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$100(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_1
    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

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

    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

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

    .line 121
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 122
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 125
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 161
    :goto_2
    return-object p2

    .line 110
    .end local v0    # "holder":Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 117
    :cond_1
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$100(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 133
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2

    .line 136
    :cond_3
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    const v3, 0x7f0e01bd

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 137
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 140
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 142
    invoke-static {v0}, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/BSideGridViewAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/youku/adapter/BSideGridViewAdapter$1;-><init>(Lcom/youku/adapter/BSideGridViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public setBSideGridViewPageData(Ljava/util/Map;)V
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
    .line 56
    .local p1, "pageData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowset;>;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    .line 57
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    .line 58
    invoke-virtual {p0}, Lcom/youku/adapter/BSideGridViewAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    .line 63
    invoke-virtual {p0}, Lcom/youku/adapter/BSideGridViewAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->playMode:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setResultPostion(I)V
    .locals 3
    .param p1, "resultPostion"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->resultPostion:I

    .line 72
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/BSideGridViewAdapter;->resultPostion:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageData:Ljava/util/Map;

    iput-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    .line 73
    const-string v0, "dazhu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GRIDVIEW.setResultPostion - pageData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/youku/adapter/BSideGridViewAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

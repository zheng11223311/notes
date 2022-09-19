.class public Lcom/youku/adapter/ASideManGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ASideManGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_0:I

.field private final TYPE_1:I

.field a:Landroid/app/Activity;

.field inflater:Landroid/view/LayoutInflater;

.field private isHide:Z

.field page:I

.field private playMode:Ljava/lang/String;

.field tab:Lcom/youku/vo/TABS;

.field tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;

.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TabsVideos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/youku/adapter/ASideManGridViewAdapter;-><init>(Landroid/app/Activity;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "hide"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    .line 39
    iput-boolean v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->isHide:Z

    .line 41
    iput v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->TYPE_0:I

    .line 42
    iput v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->TYPE_1:I

    .line 49
    iput-boolean p2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->isHide:Z

    .line 50
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->a:Landroid/app/Activity;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 52
    iput v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->page:I

    .line 53
    return-void
.end method

.method private initView(ILcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "holder"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p3, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 154
    packed-switch p3, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$100(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->a:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->img:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 161
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$300(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$400(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->genre:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$500(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->stripe_top:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$100(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-static {p2}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$600(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initViewHolder(Landroid/view/View;Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 174
    const v0, 0x7f0c0cad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$002(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 175
    const v0, 0x7f0c0cae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$202(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f0c0caf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$302(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0c0cb0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$402(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0c0cb1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$502(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0c0cb2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$102(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 181
    const v0, 0x7f0c0cb3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$702(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 182
    const v0, 0x7f0c0cb4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->access$602(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x4

    .line 91
    iget-boolean v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->isHide:Z

    if-nez v2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget v2, v2, Lcom/youku/vo/TABS;->show_type:I

    if-nez v2, :cond_2

    .line 94
    iget-object v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget v0, v0, Lcom/youku/vo/TABS;->show_type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 101
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_3

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 108
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget v0, v0, Lcom/youku/vo/TABS;->show_type:I

    return v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "p"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    new-instance v0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;-><init>(Lcom/youku/adapter/ASideManGridViewAdapter;)V

    .line 136
    .local v0, "holder":Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    invoke-direct {p0, p2, v0}, Lcom/youku/adapter/ASideManGridViewAdapter;->initViewHolder(Landroid/view/View;Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)V

    .line 141
    :goto_0
    invoke-virtual {p0, p1}, Lcom/youku/adapter/ASideManGridViewAdapter;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/youku/adapter/ASideManGridViewAdapter;->initView(ILcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;I)V

    .line 142
    new-instance v1, Lcom/youku/adapter/ASideManGridViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/adapter/ASideManGridViewAdapter$1;-><init>(Lcom/youku/adapter/ASideManGridViewAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object p2

    .line 139
    .end local v0    # "holder":Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x2

    return v0
.end method

.method public setASideGridViewTabs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/adapter/ASideManGridViewAdapter;->setASideGridViewTabs(Ljava/util/ArrayList;I)V

    .line 57
    return-void
.end method

.method public setASideGridViewTabs(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    .line 64
    iput p2, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->page:I

    .line 65
    if-nez p2, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/TABS;

    iget v1, v1, Lcom/youku/vo/TABS;->is_default:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 68
    move p2, v0

    .line 73
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/youku/adapter/ASideManGridViewAdapter;->setCurrentPage(I)V

    .line 74
    return-void

    .line 66
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->page:I

    .line 78
    invoke-virtual {p0, p1}, Lcom/youku/adapter/ASideManGridViewAdapter;->setResultPostion(I)V

    .line 79
    invoke-virtual {p0}, Lcom/youku/adapter/ASideManGridViewAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->playMode:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setResultPostion(I)V
    .locals 1
    .param p1, "resultPostion"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TABS;

    iput-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    .line 85
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget-object v0, v0, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    .line 87
    :cond_0
    return-void
.end method

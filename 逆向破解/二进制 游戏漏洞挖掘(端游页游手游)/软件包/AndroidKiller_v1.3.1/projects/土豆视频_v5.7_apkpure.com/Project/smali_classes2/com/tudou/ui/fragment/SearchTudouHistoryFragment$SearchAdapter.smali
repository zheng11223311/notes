.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchTudouHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field private isHaveDeleteButton:Z

.field private isshow:Z

.field private tempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Ljava/util/ArrayList;ZZ)V
    .locals 1
    .param p3, "isshow"    # Z
    .param p4, "isHave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 224
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    .line 225
    iput-boolean p3, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->isshow:Z

    .line 226
    iput-boolean p4, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->isHaveDeleteButton:Z

    .line 227
    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->isHaveDeleteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 244
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 250
    if-nez p1, :cond_0

    .line 251
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03004e

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 253
    .local v5, "view1":Landroid/view/View;
    const v6, 0x7f0c01f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    .local v0, "head":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchOfHistory;

    iget-object v6, v6, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v5

    .line 327
    .end local v0    # "head":Landroid/widget/TextView;
    .end local v5    # "view1":Landroid/view/View;
    :goto_0
    return-object v4

    .line 259
    :cond_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 260
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03004f

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 263
    .local v4, "view":Landroid/view/View;
    new-instance v6, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 276
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030050

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 278
    .restart local v4    # "view":Landroid/view/View;
    const v6, 0x7f0c01f7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 279
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchOfHistory;

    iget-object v6, v6, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const v6, 0x7f0c01f6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 282
    .local v2, "image":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchOfHistory;

    iget v6, v6, Lcom/youku/vo/SearchOfHistory;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 283
    const v6, 0x7f02083d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    :cond_2
    :goto_1
    const v6, 0x7f0c01f8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 289
    .local v1, "hisDelRel":Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->isshow:Z

    if-eqz v6, :cond_4

    .line 293
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    new-instance v6, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;

    invoke-direct {v6, p0, p1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 284
    .end local v1    # "hisDelRel":Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchOfHistory;

    iget v6, v6, Lcom/youku/vo/SearchOfHistory;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 285
    const v6, 0x7f02083e

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 325
    .restart local v1    # "hisDelRel":Landroid/widget/RelativeLayout;
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

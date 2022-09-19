.class Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameSubCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameSubCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTagAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTagsPair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1017
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    .line 1018
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1019
    iput-object p3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mTagsPair:Ljava/util/List;

    .line 1020
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1021
    return-void
.end method

.method private getTagKeyValueFromPositon(I)Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1056
    if-gez p1, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-object v0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1062
    if-eqz p1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$500(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_2

    .line 1066
    new-instance v0, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mTagsPair:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    goto :goto_0
.end method

.method private getTextViewBg(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "focused"    # Z

    .prologue
    .line 1111
    if-eqz p1, :cond_0

    sget v0, Lcom/youku/gamecenter/R$drawable;->game_tag_gridview_item_pressed:I

    .line 1113
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1111
    .end local v0    # "resId":I
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_tag_gridview_item_normal_tudou:I

    goto :goto_0
.end method

.method private inflateView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_subcategory_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setViewDatas(Landroid/view/View;ILcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "item"    # Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .prologue
    .line 1079
    sget v4, Lcom/youku/gamecenter/R$id;->game_tag_item:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1081
    .local v1, "textview":Landroid/widget/TextView;
    sget v4, Lcom/youku/gamecenter/R$id;->horizontal_line:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, "horizontal_line":Landroid/view/View;
    sget v4, Lcom/youku/gamecenter/R$id;->vertical_line:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1083
    .local v3, "vertical_line":Landroid/view/View;
    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$600(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1088
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    :goto_1
    iget-object v4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$500(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge p2, v4, :cond_0

    .line 1096
    new-instance v4, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;

    iget-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {v4, v5, p3, p2}, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    :cond_0
    add-int/lit8 v4, p2, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt p2, v4, :cond_2

    .line 1108
    :cond_2
    return-void

    .line 1083
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v2, p3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    goto :goto_0

    .line 1090
    .restart local v2    # "title":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$700(Lcom/youku/gamecenter/GameSubCategoryActivity;)I

    move-result v4

    if-ne p2, v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v4}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->getTextViewBg(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1091
    iget-object v4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$700(Lcom/youku/gamecenter/GameSubCategoryActivity;)I

    move-result v4

    if-ne p2, v4, :cond_6

    const/4 v4, -0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1090
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1091
    :cond_6
    const v4, -0xcccccd

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mTagsPair:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1025
    const/4 v0, 0x0

    .line 1032
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->mTagsPair:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1028
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x4

    .line 1029
    .local v1, "mod":I
    if-eqz v1, :cond_0

    .line 1030
    rsub-int/lit8 v2, v1, 0x4

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1036
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1040
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->getTagKeyValueFromPositon(I)Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    move-result-object v0

    .line 1048
    .local v0, "item":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->inflateView()Landroid/view/View;

    move-result-object p2

    .line 1050
    invoke-direct {p0, p2, p1, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->setViewDatas(Landroid/view/View;ILcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;)V

    .line 1052
    return-object p2
.end method

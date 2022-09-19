.class Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ClassifyHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/ClassifyHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mEmptyView:Landroid/view/View;

.field mIconFour:Landroid/widget/ImageView;

.field mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mIconOne:Landroid/widget/ImageView;

.field mIconThree:Landroid/widget/ImageView;

.field mIconTwo:Landroid/widget/ImageView;

.field mLinearFour:Landroid/widget/LinearLayout;

.field mLinearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field mLinearOne:Landroid/widget/LinearLayout;

.field mLinearThree:Landroid/widget/LinearLayout;

.field mLinearTwo:Landroid/widget/LinearLayout;

.field mNameFour:Landroid/widget/TextView;

.field mNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNameOne:Landroid/widget/TextView;

.field mNameThree:Landroid/widget/TextView;

.field mNameTwo:Landroid/widget/TextView;

.field mRelativeFour:Landroid/widget/RelativeLayout;

.field mRelativeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field mRelativeOne:Landroid/widget/RelativeLayout;

.field mRelativeThree:Landroid/widget/RelativeLayout;

.field mRelativeTwo:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeList:Ljava/util/List;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearList:Ljava/util/List;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconList:Ljava/util/List;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameList:Ljava/util/List;

    .line 462
    const v0, 0x7f0c04fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mEmptyView:Landroid/view/View;

    .line 464
    const v0, 0x7f0c0767

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    .line 465
    const v0, 0x7f0c076b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    .line 466
    const v0, 0x7f0c076f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    .line 467
    const v0, 0x7f0c0773

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    .line 469
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const v0, 0x7f0c0768

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearOne:Landroid/widget/LinearLayout;

    .line 475
    const v0, 0x7f0c076c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearTwo:Landroid/widget/LinearLayout;

    .line 476
    const v0, 0x7f0c0770

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    .line 477
    const v0, 0x7f0c0774

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    .line 479
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearOne:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearTwo:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    const v0, 0x7f0c0769

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    .line 485
    const v0, 0x7f0c076d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    .line 486
    const v0, 0x7f0c0771

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    .line 487
    const v0, 0x7f0c0775

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    .line 489
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    const v0, 0x7f0c076a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameOne:Landroid/widget/TextView;

    .line 495
    const v0, 0x7f0c076e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameTwo:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f0c0772

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameThree:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f0c0776

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameFour:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameOne:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameTwo:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameThree:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameFour:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.class Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RowPieceTableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/RowPieceTableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field bottomLine:Landroid/view/View;

.field centreIcon:Landroid/widget/ImageView;

.field centreIntro:Landroid/widget/TextView;

.field centreLayout:Landroid/widget/RelativeLayout;

.field centreName:Landroid/widget/TextView;

.field centreRests:Landroid/widget/TextView;

.field leftIcon:Landroid/widget/ImageView;

.field leftIntro:Landroid/widget/TextView;

.field leftLayout:Landroid/widget/RelativeLayout;

.field leftName:Landroid/widget/TextView;

.field leftRests:Landroid/widget/TextView;

.field rightIcon:Landroid/widget/ImageView;

.field rightIntro:Landroid/widget/TextView;

.field rightLayout:Landroid/widget/RelativeLayout;

.field rightName:Landroid/widget/TextView;

.field rightRests:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/RowPieceTableAdapter;

.field titleLin:Landroid/widget/LinearLayout;

.field titleWeek:Landroid/widget/TextView;

.field titleWeekday:Landroid/widget/TextView;

.field tvNoUpdata:Landroid/widget/TextView;

.field videoIcon:[Landroid/widget/ImageView;

.field videoIntro:[Landroid/widget/TextView;

.field videoLayout:[Landroid/widget/RelativeLayout;

.field videoLin:Landroid/widget/LinearLayout;

.field videoName:[Landroid/widget/TextView;

.field videoRests:[Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/RowPieceTableAdapter;Landroid/view/View;)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    iput-object p1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/RowPieceTableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->view:Landroid/view/View;

    .line 251
    const v0, 0x7f0c081f

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    .line 253
    const v0, 0x7f0c0820

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleLin:Landroid/widget/LinearLayout;

    .line 254
    const v0, 0x7f0c0821

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleWeekday:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0c0822

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleWeek:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0c0823

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->tvNoUpdata:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0c0824

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLin:Landroid/widget/LinearLayout;

    .line 261
    const v0, 0x7f0c02be

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 262
    const v0, 0x7f0c02bf

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftIcon:Landroid/widget/ImageView;

    .line 263
    const v0, 0x7f0c0825

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftRests:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0c0826

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftName:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0c02c3

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftIntro:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0c02c4

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    .line 268
    const v0, 0x7f0c02c5

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreIcon:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f0c0827

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreRests:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0c0828

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreName:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0c02c9

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreIntro:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0c02ca

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 274
    const v0, 0x7f0c02cb

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightIcon:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0c0829

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightRests:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0c082a

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightName:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0c02cf

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->findViewById(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightIntro:Landroid/widget/TextView;

    .line 279
    new-array v0, v5, [Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLayout:[Landroid/widget/RelativeLayout;

    .line 280
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftIcon:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreIcon:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightIcon:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoIcon:[Landroid/widget/ImageView;

    .line 281
    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftRests:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreRests:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightRests:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoRests:[Landroid/widget/TextView;

    .line 282
    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftName:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreName:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightName:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoName:[Landroid/widget/TextView;

    .line 283
    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->leftIntro:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreIntro:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightIntro:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoIntro:[Landroid/widget/TextView;

    .line 284
    return-void
.end method


# virtual methods
.method public findViewById(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setWeek(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "week"    # Ljava/lang/String;
    .param p3, "weekday"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 318
    const-string v0, ""

    if-ne p2, v0, :cond_0

    const-string v0, ""

    if-ne p3, v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleLin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleLin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    if-nez p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleWeekday:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->titleWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

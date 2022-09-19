.class public Lcom/youku/player/ui/widget/YoukuDialog;
.super Landroid/app/Dialog;
.source "YoukuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;,
        Lcom/youku/player/ui/widget/YoukuDialog$TYPE;
    }
.end annotation


# static fields
.field private static TYPE_NORMAL_DIALOG:I

.field private static TYPE_PIKER_DIALOG:I


# instance fields
.field private checkedItem:I

.field private closeBtnListener:Landroid/view/View$OnClickListener;

.field private content:Ljava/lang/String;

.field private contentTV:Landroid/widget/TextView;

.field private currentType:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

.field private highQualityBtn:Landroid/widget/RadioButton;

.field private item1:Landroid/widget/RelativeLayout;

.field private item2:Landroid/widget/RelativeLayout;

.field private item3:Landroid/widget/RelativeLayout;

.field private item4:Landroid/widget/RelativeLayout;

.field private listener:Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private negitiveText:Ljava/lang/String;

.field private negtiveBtn:Landroid/widget/Button;

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalPositiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalQualityBtn:Landroid/widget/RadioButton;

.field private positiveBtn:Landroid/widget/Button;

.field private positiveBtnListener:Landroid/view/View$OnClickListener;

.field private positiveText:Ljava/lang/String;

.field private selectedLanguage:Ljava/lang/String;

.field private selectedLanguageName:Ljava/lang/String;

.field private superQualityBtn:Landroid/widget/RadioButton;

.field private title:Landroid/widget/TextView;

.field private titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/youku/player/ui/widget/YoukuDialog;->TYPE_NORMAL_DIALOG:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/youku/player/ui/widget/YoukuDialog;->TYPE_PIKER_DIALOG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget v0, Lcom/youku/android/player/R$style;->YoukuDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkedItem"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/youku/player/ui/widget/YoukuDialog;-><init>(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->picker:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->currentType:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    .line 87
    iput p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/ui/widget/YoukuDialog$TYPE;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/youku/player/ui/widget/YoukuDialog;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->currentType:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    .line 75
    invoke-static {p1}, Lcom/youku/player/util/DetailUtil;->readCachedFormat(Landroid/content/Context;)I

    move-result v0

    .line 76
    .local v0, "selectedFormat":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    if-ne v0, v2, :cond_2

    .line 79
    iput v2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/player/ui/widget/YoukuDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/youku/player/ui/widget/YoukuDialog;->resetSelectedSwitcher(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/ui/widget/YoukuDialog;)Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->listener:Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YoukuDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private resetSelectedSwitcher(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 203
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$1;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$2;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$3;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$3;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$4;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$4;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$5;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$5;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$6;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$6;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$7;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$7;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$8;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$8;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$9;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$9;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$10;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$10;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/player/ui/widget/YoukuDialog$11;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YoukuDialog$11;-><init>(Lcom/youku/player/ui/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->currentType:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    sget-object v2, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->picker:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    if-ne v1, v2, :cond_5

    .line 97
    sget v1, Lcom/youku/android/player/R$layout;->yp_youku_dialog_picker:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->setContentView(I)V

    .line 98
    sget v1, Lcom/youku/android/player/R$id;->positive_btn:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    .line 99
    sget v1, Lcom/youku/android/player/R$id;->negtive_btn:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    .line 100
    sget v1, Lcom/youku/android/player/R$id;->edit_title:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->title:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->titleText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->titleText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    sget v1, Lcom/youku/android/player/R$id;->item1:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    .line 104
    sget v1, Lcom/youku/android/player/R$id;->item2:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    .line 105
    sget v1, Lcom/youku/android/player/R$id;->item3:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    .line 106
    sget v1, Lcom/youku/android/player/R$id;->item4:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    .line 108
    const-string/jumbo v1, "\u4e2d\u6587"

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->selectedLanguage:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "\u56fd\u8bed"

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->selectedLanguageName:Ljava/lang/String;

    .line 110
    sget v1, Lcom/youku/android/player/R$id;->item4_tv:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "languageTextView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->selectedLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget v1, Lcom/youku/android/player/R$id;->normal_quality:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    .line 120
    sget v1, Lcom/youku/android/player/R$id;->high_quality:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    .line 122
    sget v1, Lcom/youku/android/player/R$id;->super_quality:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    .line 125
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/youku/player/ui/widget/YoukuDialog;->setListeners()V

    .line 138
    iget v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 165
    .end local v0    # "languageTextView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local v0    # "languageTextView":Landroid/widget/TextView;
    :cond_2
    iget v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    if-ne v1, v3, :cond_3

    .line 141
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 142
    :cond_3
    iget v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    if-ne v1, v4, :cond_4

    .line 143
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 144
    :cond_4
    iget v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->checkedItem:I

    if-ne v1, v6, :cond_1

    .line 145
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 147
    .end local v0    # "languageTextView":Landroid/widget/TextView;
    :cond_5
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->currentType:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    sget-object v2, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->normal:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    if-ne v1, v2, :cond_1

    .line 148
    sget v1, Lcom/youku/android/player/R$layout;->yp_youku_dialog_normal:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->setContentView(I)V

    .line 151
    sget v1, Lcom/youku/android/player/R$id;->positive_btn:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    .line 152
    sget v1, Lcom/youku/android/player/R$id;->negtive_btn:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    .line 153
    sget v1, Lcom/youku/android/player/R$id;->content:I

    invoke-virtual {p0, v1}, Lcom/youku/player/ui/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->contentTV:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->content:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->content:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 157
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->contentTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_6
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_7
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_8
    invoke-direct {p0}, Lcom/youku/player/ui/widget/YoukuDialog;->setNormalListener()V

    goto/16 :goto_0
.end method

.method public setItemClickListener(Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->listener:Lcom/youku/player/ui/widget/YoukuDialog$OnClickListener;

    .line 170
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->content:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 462
    iput-object p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 463
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 472
    iput-object p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 473
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 457
    iput-object p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 458
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 467
    iput-object p2, p0, Lcom/youku/player/ui/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 468
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setOnCloseBtn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->closeBtnListener:Landroid/view/View$OnClickListener;

    .line 487
    return-void
.end method

.method public setPositiveBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "positiveBtnListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->positiveBtnListener:Landroid/view/View$OnClickListener;

    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog;->titleText:Ljava/lang/String;

    .line 483
    return-void
.end method

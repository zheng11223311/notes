.class public Lcom/youku/widget/YoukuDialog;
.super Landroid/app/Dialog;
.source "YoukuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/YoukuDialog$OnClickListener;,
        Lcom/youku/widget/YoukuDialog$TYPE;
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

.field private currentType:Lcom/youku/widget/YoukuDialog$TYPE;

.field private highQualityBtn:Landroid/widget/RadioButton;

.field private item1:Landroid/widget/RelativeLayout;

.field private item2:Landroid/widget/RelativeLayout;

.field private item3:Landroid/widget/RelativeLayout;

.field private item4:Landroid/widget/RelativeLayout;

.field private listener:Lcom/youku/widget/YoukuDialog$OnClickListener;

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

.field private tipscCheckBox:Landroid/widget/CheckBox;

.field private title:Landroid/widget/TextView;

.field private titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/youku/widget/YoukuDialog;->TYPE_NORMAL_DIALOG:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/youku/widget/YoukuDialog;->TYPE_PIKER_DIALOG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const v0, 0x7f0e0082

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkedItem"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/youku/widget/YoukuDialog;-><init>(Landroid/content/Context;)V

    .line 88
    sget-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    iput-object v0, p0, Lcom/youku/widget/YoukuDialog;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    .line 89
    iput p2, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/widget/YoukuDialog$TYPE;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/youku/widget/YoukuDialog$TYPE;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/youku/widget/YoukuDialog;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p2, p0, Lcom/youku/widget/YoukuDialog;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    .line 75
    invoke-static {p1}, Lcom/youku/phone/detail/DetailUtil;->readCachedFormat(Landroid/content/Context;)I

    move-result v0

    .line 77
    .local v0, "selectedFormat":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-ne v0, v2, :cond_2

    .line 80
    iput v2, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v1, 0x2

    iput v1, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->closeBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/YoukuDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/youku/widget/YoukuDialog;->resetSelectedSwitcher(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/YoukuDialog;)Lcom/youku/widget/YoukuDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->listener:Lcom/youku/widget/YoukuDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/YoukuDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->positiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private resetSelectedSwitcher(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    if-nez p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 234
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/YoukuDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$2;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/YoukuDialog$3;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$3;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/YoukuDialog$4;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$4;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/YoukuDialog$5;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$5;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/YoukuDialog$6;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$6;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/YoukuDialog$7;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$7;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/YoukuDialog$8;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$8;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/YoukuDialog$9;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$9;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/YoukuDialog$10;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$10;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    return-void
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/YoukuDialog$11;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$11;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/YoukuDialog$12;

    invoke-direct {v1, p0}, Lcom/youku/widget/YoukuDialog$12;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    return-void
.end method


# virtual methods
.method public isCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->tipscCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->tipscCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0c02bd

    const v7, 0x7f0c02bc

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_7

    .line 99
    const v3, 0x7f030337

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->setContentView(I)V

    .line 100
    invoke-virtual {p0, v8}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    .line 101
    invoke-virtual {p0, v7}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    .line 102
    const v3, 0x7f0c0d0b

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->title:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->titleText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->titleText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    const v3, 0x7f0c0416

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    .line 106
    const v3, 0x7f0c0418

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    .line 107
    const v3, 0x7f0c041d

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    .line 108
    const v3, 0x7f0c043b

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    .line 109
    sget v3, Lcom/tudou/android/Youku;->freq:I

    const v4, 0x124f80

    if-ge v3, v4, :cond_1

    .line 110
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    :cond_1
    sget-boolean v3, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/phone/detail/DetailUtil;->readCachedLanguage(Landroid/content/Context;)I

    move-result v1

    .line 118
    .local v1, "lang_id":I
    const v3, 0x7f0c0df8

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "languageTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->selectedLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v3, 0x7f0c0df3

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    .line 128
    const v3, 0x7f0c0df4

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    .line 130
    const v3, 0x7f0c0df5

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    .line 133
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lcom/youku/widget/YoukuDialog;->setListeners()V

    .line 146
    iget v3, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    if-nez v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 196
    .end local v1    # "lang_id":I
    .end local v2    # "languageTextView":Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-void

    .line 148
    .restart local v1    # "lang_id":I
    .restart local v2    # "languageTextView":Landroid/widget/TextView;
    :cond_4
    iget v3, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    if-ne v3, v5, :cond_5

    .line 149
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 150
    :cond_5
    iget v3, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    if-ne v3, v6, :cond_6

    .line 151
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 152
    :cond_6
    iget v3, p0, Lcom/youku/widget/YoukuDialog;->checkedItem:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 153
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->item4:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_0

    .line 155
    .end local v1    # "lang_id":I
    .end local v2    # "languageTextView":Landroid/widget/TextView;
    :cond_7
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_b

    .line 156
    const v3, 0x7f030336

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->setContentView(I)V

    .line 159
    invoke-virtual {p0, v8}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    .line 160
    invoke-virtual {p0, v7}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    .line 161
    const v3, 0x7f0c02bb

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->contentTV:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f0c0df2

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "close":Landroid/view/View;
    new-instance v3, Lcom/youku/widget/YoukuDialog$1;

    invoke-direct {v3, p0}, Lcom/youku/widget/YoukuDialog$1;-><init>(Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->content:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->content:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->contentTV:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_8
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 179
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_9
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 181
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_a
    invoke-direct {p0}, Lcom/youku/widget/YoukuDialog;->setNormalListener()V

    goto/16 :goto_0

    .line 183
    .end local v0    # "close":Landroid/view/View;
    :cond_b
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->attention:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_3

    .line 184
    const v3, 0x7f030335

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->setContentView(I)V

    .line 185
    const v3, 0x7f0c0df1

    invoke-virtual {p0, v3}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->tipscCheckBox:Landroid/widget/CheckBox;

    .line 186
    invoke-virtual {p0, v8}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    .line 187
    invoke-virtual {p0, v7}, Lcom/youku/widget/YoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    .line 188
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 189
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_c
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 191
    iget-object v3, p0, Lcom/youku/widget/YoukuDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_d
    invoke-direct {p0}, Lcom/youku/widget/YoukuDialog;->setNormalListener()V

    goto/16 :goto_0
.end method

.method public setItemClickListener(Lcom/youku/widget/YoukuDialog$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/YoukuDialog$OnClickListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->listener:Lcom/youku/widget/YoukuDialog$OnClickListener;

    .line 201
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->content:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 499
    iput-object p2, p0, Lcom/youku/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 500
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 509
    iput-object p2, p0, Lcom/youku/widget/YoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 510
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->negitiveText:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 494
    iput-object p2, p0, Lcom/youku/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 495
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 504
    iput-object p2, p0, Lcom/youku/widget/YoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 505
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->positiveText:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setOnCloseBtn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->closeBtnListener:Landroid/view/View$OnClickListener;

    .line 524
    return-void
.end method

.method public setPositiveBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "positiveBtnListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->positiveBtnListener:Landroid/view/View$OnClickListener;

    .line 239
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog;->titleText:Ljava/lang/String;

    .line 520
    return-void
.end method

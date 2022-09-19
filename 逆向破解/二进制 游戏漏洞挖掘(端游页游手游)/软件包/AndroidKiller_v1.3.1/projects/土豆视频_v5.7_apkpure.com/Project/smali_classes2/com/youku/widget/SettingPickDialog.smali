.class public Lcom/youku/widget/SettingPickDialog;
.super Lcom/youku/widget/TudouDialog;
.source "SettingPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/SettingPickDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private checkedItem:I

.field private currentType:Lcom/youku/widget/TudouDialog$TYPE;

.field private item1:Landroid/widget/RelativeLayout;

.field private item2:Landroid/widget/RelativeLayout;

.field private item3:Landroid/widget/RelativeLayout;

.field private listener:Lcom/youku/widget/SettingPickDialog$OnClickListener;

.field private mContext:Landroid/content/Context;

.field public megs:[Ljava/lang/String;

.field private negitiveText:Ljava/lang/String;

.field private negtiveBtn:Landroid/widget/Button;

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalPositiveBtnListener:Landroid/view/View$OnClickListener;

.field private positiveBtn:Landroid/widget/Button;

.field private positiveText:Ljava/lang/String;

.field private radioItem1:Landroid/widget/RadioButton;

.field private radioItem2:Landroid/widget/RadioButton;

.field private radioItem3:Landroid/widget/RadioButton;

.field private title:Landroid/widget/TextView;

.field private titleText:Ljava/lang/String;

.field private txtItem1:Landroid/widget/TextView;

.field private txtItem2:Landroid/widget/TextView;

.field private txtItem3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    .line 54
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkedItem"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/youku/widget/SettingPickDialog;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    .line 65
    invoke-virtual {p0, p2}, Lcom/youku/widget/SettingPickDialog;->setCheckedItem(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/youku/widget/TudouDialog$TYPE;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/widget/SettingPickDialog;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/youku/widget/SettingPickDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SettingPickDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/youku/widget/SettingPickDialog;->resetSelectedSwitcher(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/widget/SettingPickDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/SettingPickDialog;)Lcom/youku/widget/SettingPickDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->listener:Lcom/youku/widget/SettingPickDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/SettingPickDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/SettingPickDialog;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/SettingPickDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/widget/SettingPickDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SettingPickDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private resetSelectedSwitcher(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 281
    if-nez p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$1;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$2;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$3;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$3;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$4;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$4;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$5;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$5;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$6;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$6;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$7;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$7;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/SettingPickDialog$8;

    invoke-direct {v1, p0}, Lcom/youku/widget/SettingPickDialog$8;-><init>(Lcom/youku/widget/SettingPickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method


# virtual methods
.method public getCheckedItem()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/youku/widget/SettingPickDialog;->checkedItem:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/youku/widget/TudouDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    if-ne v0, v1, :cond_3

    .line 72
    const v0, 0x7f0302ed

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->setContentView(I)V

    .line 73
    const v0, 0x7f0c02bd

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveBtn:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0c02bc

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negtiveBtn:Landroid/widget/Button;

    .line 75
    const v0, 0x7f0c0d0b

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->title:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->titleText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->titleText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negitiveText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negitiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    const v0, 0x7f0c0416

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f0c0418

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f0c041d

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    .line 89
    const v0, 0x7f0c0d0c

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem1:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0c0d0e

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem2:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0c0d10

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem3:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0c0d0d

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    .line 94
    const v0, 0x7f0c0d0f

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    .line 95
    const v0, 0x7f0c0d11

    invoke-virtual {p0, v0}, Lcom/youku/widget/SettingPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    .line 97
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_5

    .line 98
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem1:Landroid/widget/RadioButton;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem2:Landroid/widget/RadioButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->radioItem3:Landroid/widget/RadioButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/youku/widget/SettingPickDialog;->setListeners()V

    .line 125
    invoke-virtual {p0}, Lcom/youku/widget/SettingPickDialog;->getCheckedItem()I

    move-result v0

    if-nez v0, :cond_7

    .line 126
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 132
    :cond_3
    :goto_2
    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v4, :cond_6

    .line 103
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->txtItem3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/youku/widget/SettingPickDialog;->getCheckedItem()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 128
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_2

    .line 129
    :cond_8
    invoke-virtual {p0}, Lcom/youku/widget/SettingPickDialog;->getCheckedItem()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 130
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_2
.end method

.method public setCheckedItem(I)V
    .locals 0
    .param p1, "checkedItem"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/youku/widget/SettingPickDialog;->checkedItem:I

    .line 300
    return-void
.end method

.method public setItemClickListener(Lcom/youku/widget/SettingPickDialog$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/SettingPickDialog$OnClickListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->listener:Lcom/youku/widget/SettingPickDialog$OnClickListener;

    .line 136
    return-void
.end method

.method public setMessage([Ljava/lang/String;)V
    .locals 0
    .param p1, "megs"    # [Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->megs:[Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 255
    iput-object p2, p0, Lcom/youku/widget/SettingPickDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 256
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->negitiveText:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 265
    iput-object p2, p0, Lcom/youku/widget/SettingPickDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 266
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->negitiveText:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 250
    iput-object p2, p0, Lcom/youku/widget/SettingPickDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 251
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/SettingPickDialog;->positiveText:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 260
    iput-object p2, p0, Lcom/youku/widget/SettingPickDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 261
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->positiveText:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog;->titleText:Ljava/lang/String;

    .line 271
    return-void
.end method

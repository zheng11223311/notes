.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceHolder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field mBackground:I

.field mButtonIcon:I

.field mButtonText:Ljava/lang/String;

.field mButtonTextColor:I

.field mButtonTextSize:F

.field mButtonTypefaceStyle:I

.field mClickListenerTag:Ljava/lang/String;

.field mDismissListenerTag:Ljava/lang/String;

.field mDivider:I

.field mDuration:I

.field mIcon:I

.field mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field mIsIndeterminate:Z

.field mIsTouchDismissible:Z

.field mText:Ljava/lang/String;

.field mTextColor:I

.field mTextSize:F

.field mToken:Landroid/os/Parcelable;

.field mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field mTypefaceStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1689
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder$1;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1602
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v1, v4, :cond_0

    .line 1604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 1605
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    .line 1607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    .line 1609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 1610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 1611
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 1615
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 1617
    .local v0, "hasIcon":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    .line 1620
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 1624
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 1625
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 1626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    .line 1630
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 1635
    return-void

    .end local v0    # "hasIcon":Z
    :cond_2
    move v0, v3

    .line 1615
    goto :goto_0

    .restart local v0    # "hasIcon":Z
    :cond_3
    move v1, v3

    .line 1631
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1633
    goto :goto_2
.end method

.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V
    .locals 2
    .param p1, "superActivityToast"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getType()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1565
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1567
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 1568
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getButtonTextSize()F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    .line 1569
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getButtonTextColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    .line 1570
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getButtonIcon()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    .line 1571
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getDividerColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    .line 1572
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$300(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getButtonTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 1574
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$400(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 1578
    :cond_0
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1580
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    .line 1581
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 1585
    :cond_1
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$500(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 1586
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 1587
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 1588
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    .line 1589
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    .line 1590
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    .line 1591
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    .line 1592
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isIndeterminate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 1593
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getBackground()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    .line 1594
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isTouchDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 1596
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1685
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1641
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v3, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1646
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1647
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1656
    :cond_0
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-eqz v0, :cond_1

    .line 1658
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1660
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1676
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1677
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v0, :cond_3

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1680
    return-void

    .line 1665
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1676
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1678
    goto :goto_2
.end method

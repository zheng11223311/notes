.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
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

.field mButtonDivider:I

.field mButtonIcon:I

.field mButtonText:Ljava/lang/String;

.field mButtonTextColor:I

.field mButtonTextSize:F

.field mButtonTypefaceStyle:I

.field mClickListenerTag:Ljava/lang/String;

.field mDismissListenerTag:Ljava/lang/String;

.field mDuration:I

.field mIcon:I

.field mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field mIsIndeterminate:Z

.field mIsSwipeDismissible:Z

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
    .line 2194
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder$1;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2103
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 2105
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v1, v4, :cond_0

    .line 2107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 2108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    .line 2109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    .line 2110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    .line 2111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 2113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 2114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 2118
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 2120
    .local v0, "hasIcon":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    .line 2123
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 2127
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 2128
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 2130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    .line 2131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    .line 2132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    .line 2133
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    .line 2134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 2135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iput-boolean v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    .line 2139
    return-void

    .end local v0    # "hasIcon":Z
    :cond_2
    move v0, v3

    .line 2118
    goto :goto_0

    .restart local v0    # "hasIcon":Z
    :cond_3
    move v1, v3

    .line 2134
    goto :goto_1

    :cond_4
    move v1, v3

    .line 2136
    goto :goto_2

    :cond_5
    move v2, v3

    .line 2137
    goto :goto_3
.end method

.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 2
    .param p1, "superCardToast"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2065
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getType()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 2067
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 2069
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 2070
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getButtonTextSize()F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    .line 2071
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getButtonTextColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    .line 2072
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getButtonIcon()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    .line 2073
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getDividerColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    .line 2074
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$900(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 2075
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getButtonTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 2076
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$1000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 2080
    :cond_0
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2082
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    .line 2083
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 2087
    :cond_1
    invoke-static {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$1100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 2088
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 2089
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 2090
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    .line 2091
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    .line 2092
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    .line 2093
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    .line 2094
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isIndeterminate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 2095
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getBackgroundResource()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    .line 2096
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isTouchDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 2097
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isSwipeDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    .line 2099
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2190
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

    .line 2145
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v3, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2150
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2151
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2156
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2160
    :cond_0
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-eqz v0, :cond_1

    .line 2162
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2164
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2174
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2175
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2180
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2181
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2183
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    if-eqz v0, :cond_4

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2185
    return-void

    .line 2169
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2180
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2182
    goto :goto_2

    :cond_4
    move v1, v2

    .line 2183
    goto :goto_3
.end method

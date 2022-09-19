.class public Lcom/youdo/controller/MraidController$Dimensions;
.super Lcom/youdo/controller/MraidController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youdo/controller/MraidController$Dimensions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$Dimensions$1;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$Dimensions$1;-><init>()V

    sput-object v0, Lcom/youdo/controller/MraidController$Dimensions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>()V

    iput v0, p0, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iput v0, p0, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    iput v0, p0, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    iput v0, p0, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

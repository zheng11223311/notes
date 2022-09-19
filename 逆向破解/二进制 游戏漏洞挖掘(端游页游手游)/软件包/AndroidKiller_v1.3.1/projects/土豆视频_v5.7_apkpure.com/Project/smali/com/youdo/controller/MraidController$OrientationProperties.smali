.class public Lcom/youdo/controller/MraidController$OrientationProperties;
.super Lcom/youdo/controller/MraidController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrientationProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youdo/controller/MraidController$OrientationProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$OrientationProperties$1;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$OrientationProperties$1;-><init>()V

    sput-object v0, Lcom/youdo/controller/MraidController$OrientationProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidController$OrientationProperties;->allowOrientationChange:Z

    sget-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->NONE:Lorg/openad/constants/IOpenAdContants$Orientation;

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$Orientation;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/controller/MraidController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.class public Lcom/youdo/AdManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/ad/interfaces/IAdManager;


# instance fields
.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;
    .locals 1

    new-instance v0, Lcom/youdo/AdApplicationContext;

    invoke-direct {v0, p0}, Lcom/youdo/AdApplicationContext;-><init>(Lcom/youdo/ad/interfaces/IAdManager;)V

    return-object v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "YouDoAdSDK Runtime --- 2015-09-08 16:59:42 -- 1412 -- master -- 42e1aa3b49846925d8865dd6937033beb218ee3a"

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdManager;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1412"

    return-object v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/AdManager;->mLocation:Landroid/location/Location;

    return-void
.end method

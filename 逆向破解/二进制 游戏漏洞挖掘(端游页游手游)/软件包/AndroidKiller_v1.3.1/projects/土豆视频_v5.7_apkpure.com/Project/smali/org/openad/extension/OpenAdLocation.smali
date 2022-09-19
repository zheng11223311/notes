.class public Lorg/openad/extension/OpenAdLocation;
.super Landroid/location/Location;


# direct methods
.method public constructor <init>(DDDFLjava/lang/String;JF)V
    .locals 1

    invoke-direct {p0, p8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/openad/extension/OpenAdLocation;->setLatitude(D)V

    invoke-virtual {p0, p3, p4}, Lorg/openad/extension/OpenAdLocation;->setLongitude(D)V

    invoke-virtual {p0, p5, p6}, Lorg/openad/extension/OpenAdLocation;->setAltitude(D)V

    invoke-virtual {p0, p7}, Lorg/openad/extension/OpenAdLocation;->setAccuracy(F)V

    invoke-virtual {p0, p9, p10}, Lorg/openad/extension/OpenAdLocation;->setTime(J)V

    invoke-virtual {p0, p11}, Lorg/openad/extension/OpenAdLocation;->setSpeed(F)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-void
.end method

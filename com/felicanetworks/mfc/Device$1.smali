.class Lcom/felicanetworks/mfc/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/felicanetworks/mfc/Device;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/Device;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 204
    new-instance v0, Lcom/felicanetworks/mfc/Device;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/felicanetworks/mfc/Device;-><init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/Device;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Device$1;->createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/Device;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/felicanetworks/mfc/Device;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    new-array v0, p1, [Lcom/felicanetworks/mfc/Device;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Device$1;->newArray(I)[Lcom/felicanetworks/mfc/Device;

    move-result-object v0

    return-object v0
.end method
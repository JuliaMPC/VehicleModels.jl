@def F_YF begin #(V, U, Ax, R, SA)		# front tire force

  if length(Ax) != 1
    Fyf = zeros(Float64, (length(Ax),1))
    for ii in eachindex(Ax)
      Fyf[ii] = ((PD2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))*sin(PC1*atan((((PK1*sin(2*atan(PK2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V[ii] + la*R[ii])/(U[ii]+EP)) - SA[ii]) + PH2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PH1)) - ((PE2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PE1)*(1 - PE3)*(((atan((V[ii] + la*R[ii])/(U[ii]+EP)) - SA[ii]) + PH2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PH1))/((((atan((V[ii] + la*R[ii])/(U[ii]+EP)) - SA[ii]) + PH2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PH1)^2 + EP^2)^(0.5)))*((((PK1*sin(2*atan(PK2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V[ii] + la*R[ii])/(U[ii]+EP)) - SA[ii]) + PH2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PH1)) - atan((((PK1*sin(2*atan(PK2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V[ii] + la*R[ii])/(U[ii]+EP)) - SA[ii]) + PH2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff) + PH1)))))) + (PV2*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)^2 + PV1*(FzF0 - (Ax[ii] - V[ii]*R[ii])*dFzx_coeff)));
    end
  else
    Fyf = Float64
    Fyf = ((PD2*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*(FzF0 - (Ax - V*R)*dFzx_coeff))*sin(PC1*atan((((PK1*sin(2*atan(PK2*(FzF0 - (Ax - V*R)*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V + la*R)/(U+EP)) - SA) + PH2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PH1)) - ((PE2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PE1)*(1 - PE3)*(((atan((V + la*R)/(U+EP)) - SA) + PH2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PH1))/((((atan((V + la*R)/(U+EP)) - SA) + PH2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PH1)^2 + EP^2)^(0.5)))*((((PK1*sin(2*atan(PK2*(FzF0 - (Ax - V*R)*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V + la*R)/(U+EP)) - SA) + PH2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PH1)) - atan((((PK1*sin(2*atan(PK2*(FzF0 - (Ax - V*R)*dFzx_coeff))))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)) + ((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)))/(((PD2*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PD1*PC1*(FzF0 - (Ax - V*R)*dFzx_coeff))^2 + EP^2)^(0.5))*0.001)+EP))*((atan((V + la*R)/(U+EP)) - SA) + PH2*(FzF0 - (Ax - V*R)*dFzx_coeff) + PH1)))))) + (PV2*(FzF0 - (Ax - V*R)*dFzx_coeff)^2 + PV1*(FzF0 - (Ax - V*R)*dFzx_coeff)));
  end
  Fyf
end
